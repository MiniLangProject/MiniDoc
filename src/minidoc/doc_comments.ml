/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Parses MiniDoc line comments, block comments, file comments, and tags.

package minidoc.doc_comments

import std.string as strings
import minidoc.model as model
import minidoc.util as util

/// Performs the '_stripOneSpace' step in MiniDoc's documentation-comment parser.
/// @internal
function _stripOneSpace(value)
  if len(value) > 0 and value[0] == " " then
    return strings.substr(value, 1, len(value) - 1)
  end if
  return value
end function

/// Performs the '_cleanBlockLine' step in MiniDoc's documentation-comment parser.
/// @internal
function _cleanBlockLine(value)
  value = strings.rtrim(value)
  value = strings.ltrim(value)
  if len(value) > 0 and value[0] == "*" then
    value = strings.substr(value, 1, len(value) - 1)
    value = _stripOneSpace(value)
  end if
  return value
end function

/// Performs the '_firstWord' step in MiniDoc's documentation-comment parser.
/// @internal
function _firstWord(value)
  value = strings.trim(value)
  if value == "" then return ["", ""] end if
  at = 0
  while at < len(value) and not util.isWhitespaceChar(value[at])
    at = at + 1
  end while
  head = strings.substr(value, 0, at)
  tail = ""
  if at < len(value) then tail = strings.trim(strings.substr(value, at, len(value) - at)) end if
  return [head, tail]
end function

/// Performs the '_summaryAndDetails' step in MiniDoc's documentation-comment parser.
/// @internal
function _summaryAndDetails(body)
  lines = strings.split(body, "\n")
  summary_lines = []
  details_lines = []
  in_details = false
  for i = 0 to len(lines) - 1
    line = strings.rtrim(lines[i])
    if in_details == false and strings.trim(line) == "" then
      if len(summary_lines) > 0 then in_details = true end if
      continue
    end if
    if in_details then
      details_lines = details_lines + [line]
    else
      summary_lines = summary_lines + [line]
    end if
  end for
  summary = strings.trim(strings.join(summary_lines, " "))
  details = strings.trim(strings.join(details_lines, "\n"))
  return [summary, details]
end function

/// Performs the '_parseBlock' step in MiniDoc's documentation-comment parser.
/// @internal
function _parseBlock(target_kind, start_pos, end_pos, start_line, end_line, raw_lines)
  body_lines = []
  tags = []
  active_tag = -1
  internal = false

  for i = 0 to len(raw_lines) - 1
    line = strings.rtrim(raw_lines[i])
    trimmed = strings.trim(line)
    if len(trimmed) > 0 and trimmed[0] == "@" then
      first = _firstWord(strings.substr(trimmed, 1, len(trimmed) - 1))
      tag_name = strings.toLowerAscii(first[0])
      remainder = first[1]
      key = ""
      text = remainder
      if tag_name == "param" or tag_name == "error" then
        keyed = _firstWord(remainder)
        key = keyed[0]
        text = keyed[1]
      else if tag_name == "see" or tag_name == "since" or tag_name == "group" or tag_name == "category" or tag_name == "covers" or tag_name == "timeout" then
        keyed2 = _firstWord(remainder)
        key = keyed2[0]
        text = keyed2[1]
      end if
      tags = tags + [model.DocTag(tag_name, key, text)]
      active_tag = len(tags) - 1
      if tag_name == "internal" then internal = true end if
    else if active_tag >= 0 then
      continuation = strings.trim(line)
      if continuation != "" then
        if tags[active_tag].text != "" then tags[active_tag].text = tags[active_tag].text + "\n" end if
        tags[active_tag].text = tags[active_tag].text + continuation
      end if
    else
      body_lines = body_lines + [line]
    end if
  end for

  body = strings.trim(strings.join(body_lines, "\n"))
  parts = _summaryAndDetails(body)
  return model.DocBlock(target_kind, start_pos, end_pos, start_line, end_line, body, parts[0], parts[1], tags, internal, false)
end function

/// Performs the '_finishPending' step in MiniDoc's documentation-comment parser.
/// @internal
function _finishPending(docs, pending_kind, pending_start, pending_end, pending_start_line, pending_end_line, pending_lines)
  if pending_kind == "" then return docs end if
  return docs + [_parseBlock(pending_kind, pending_start, pending_end, pending_start_line, pending_end_line, pending_lines)]
end function

// Scan documentation comments at the beginning of source lines. `///` is the
// explicit form; ordinary leading `//` comments are accepted for compatibility
// with established MiniLang projects. Markers inside strings remain ignored.
/// Scans source text and returns all MiniDoc documentation blocks.
/// @param source MiniLang source text to scan.
/// @since 0.1.0
function scan(source)
  if typeof(source) != "string" then return [] end if
  lines = strings.split(source, "\n")
  docs = []
  offset = 0
  pending_kind = ""
  pending_start = 0
  pending_end = 0
  pending_start_line = 0
  pending_end_line = 0
  pending_lines = []
  in_block = false
  block_kind = ""
  block_start = 0
  block_start_line = 0
  block_lines = []

  for index = 0 to len(lines) - 1
    line = strings.replaceAll(lines[index], "\r", "")
    line_number = index + 1
    trimmed = strings.ltrim(line)
    indent = len(line) - len(trimmed)

    if in_block then
      close_at = strings.indexOf(trimmed, "*/", 0)
      if typeof(close_at) == "int" and close_at >= 0 then
        before = strings.substr(trimmed, 0, close_at)
        block_lines = block_lines + [_cleanBlockLine(before)]
        docs = docs + [_parseBlock(block_kind, block_start, offset + len(line), block_start_line, line_number, block_lines)]
        in_block = false
        block_kind = ""
        block_lines = []
      else
        block_lines = block_lines + [_cleanBlockLine(trimmed)]
      end if
      offset = offset + len(lines[index]) + 1
      continue
    end if

    line_kind = ""
    line_text = ""
    if strings.startsWith(trimmed, "///") then
      line_kind = "declaration"
      line_text = _stripOneSpace(strings.substr(trimmed, 3, len(trimmed) - 3))
    else if strings.startsWith(trimmed, "//!") then
      line_kind = "file"
      line_text = _stripOneSpace(strings.substr(trimmed, 3, len(trimmed) - 3))
    else if strings.startsWith(trimmed, "//") then
      line_kind = "declaration"
      line_text = _stripOneSpace(strings.substr(trimmed, 2, len(trimmed) - 2))
    end if

    if line_kind != "" then
      if pending_kind != "" and pending_kind != line_kind then
        docs = _finishPending(docs, pending_kind, pending_start, pending_end, pending_start_line, pending_end_line, pending_lines)
        pending_kind = ""
        pending_lines = []
      end if
      if pending_kind == "" then
        pending_kind = line_kind
        pending_start = offset + indent
        pending_start_line = line_number
        pending_lines = []
      end if
      pending_lines = pending_lines + [line_text]
      pending_end = offset + len(line)
      pending_end_line = line_number
      offset = offset + len(lines[index]) + 1
      continue
    end if

    if pending_kind != "" then
      docs = _finishPending(docs, pending_kind, pending_start, pending_end, pending_start_line, pending_end_line, pending_lines)
      pending_kind = ""
      pending_lines = []
    end if

    block_target = ""
    marker_length = 0
    if strings.startsWith(trimmed, "/**") then
      block_target = "declaration"
      marker_length = 3
    else if strings.startsWith(trimmed, "/*!") then
      block_target = "file"
      marker_length = 3
    else if strings.startsWith(trimmed, "/*") then
      block_target = "declaration"
      marker_length = 2
    end if

    if block_target != "" then
      remainder = strings.substr(trimmed, marker_length, len(trimmed) - marker_length)
      close_inline = strings.indexOf(remainder, "*/", 0)
      if typeof(close_inline) == "int" and close_inline >= 0 then
        content = strings.substr(remainder, 0, close_inline)
        docs = docs + [_parseBlock(block_target, offset + indent, offset + len(line), line_number, line_number, [_cleanBlockLine(content)])]
      else
        in_block = true
        block_kind = block_target
        block_start = offset + indent
        block_start_line = line_number
        block_lines = [_cleanBlockLine(remainder)]
      end if
    end if
    offset = offset + len(lines[index]) + 1
  end for

  if pending_kind != "" then
    docs = _finishPending(docs, pending_kind, pending_start, pending_end, pending_start_line, pending_end_line, pending_lines)
  end if
  if in_block then
    docs = docs + [_parseBlock(block_kind, block_start, len(source), block_start_line, len(lines), block_lines)]
  end if
  return docs
end function

/// Combines all file-level documentation blocks into one document.
/// @param docs Documentation blocks returned by `scan`.
/// @since 0.1.0
function fileDocumentation(docs)
  body = []
  tags = []
  if typeof(docs) != "array" or len(docs) == 0 then return model.emptyDocBlock() end if
  first_start = 0
  last_end = 0
  first_line = 0
  last_line = 0
  for i = 0 to len(docs) - 1
    doc = docs[i]
    if doc.target_kind != "file" then continue end if
    if len(body) == 0 then
      first_start = doc.start_pos
      first_line = doc.start_line
    end if
    body = body + [doc.body]
    tags = tags + doc.tags
    last_end = doc.end_pos
    last_line = doc.end_line
    doc.used = true
  end for
  if len(body) == 0 then return model.emptyDocBlock() end if
  joined = strings.trim(strings.join(body, "\n\n"))
  parts = _summaryAndDetails(joined)
  return model.DocBlock("file", first_start, last_end, first_line, last_line, joined, parts[0], parts[1], tags, false, true)
end function

/// Finds and consumes the declaration documentation immediately before a source position.
/// @param docs Documentation blocks returned by `scan`.
/// @param source Original MiniLang source text.
/// @param position Declaration start offset.
/// @since 0.1.0
function documentationBefore(docs, source, position)
  if typeof(docs) != "array" or len(docs) == 0 then return model.emptyDocBlock() end if
  best = -1
  best_end = -1
  for i = 0 to len(docs) - 1
    doc = docs[i]
    if doc.target_kind != "declaration" or doc.used then continue end if
    if doc.end_pos <= position and doc.end_pos > best_end and util.onlyWhitespace(source, doc.end_pos, position) then
      best = i
      best_end = doc.end_pos
    end if
  end for
  if best < 0 then return model.emptyDocBlock() end if
  docs[best].used = true
  return docs[best]
end function

/// Finds the text of a named documentation tag and optional key.
/// @param doc Parsed documentation block.
/// @param name Tag name without the at sign.
/// @param key Optional key, such as a parameter name.
/// @since 0.1.0
function tagText(doc, name, key)
  if typeof(doc) != "struct" or typeof(doc.tags) != "array" or len(doc.tags) == 0 then return "" end if
  name = strings.toLowerAscii(name)
  for i = 0 to len(doc.tags) - 1
    tag = doc.tags[i]
    if tag.name == name and (key == "" or tag.key == key) then return tag.text end if
  end for
  return ""
end function

/// Reports whether a parsed documentation block contains a named tag.
/// @param doc Parsed documentation block.
/// @param name Tag name without the at sign.
/// @since 0.1.0
function hasTag(doc, name)
  if typeof(doc) != "struct" or typeof(doc.tags) != "array" or len(doc.tags) == 0 then return false end if
  name = strings.toLowerAscii(name)
  for i = 0 to len(doc.tags) - 1
    if doc.tags[i].name == name then return true end if
  end for
  return false
end function
