/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Provides path, file, escaping, hashing, sorting, and URL helpers used across MiniDoc.

package minidoc.util

import std.fs as fs
import std.io.file as fileio
import std.process as process
import std.string as strings
import std.string_builder as builders

/// Abbreviates Git object IDs while preserving explicit revision labels.
/// @param value Revision supplied by Git or the project configuration.
/// @internal
function revisionLabel(value)
  if typeof(value) != "string" then return "" end if
  if len(value) != 40 and len(value) != 64 then return value end if
  raw = bytes(value)
  for i = 0 to len(raw) - 1
    ch = raw[i]
    if not ((ch >= 48 and ch <= 57) or (ch >= 65 and ch <= 70) or (ch >= 97 and ch <= 102)) then return value end if
  end for
  return strings.substr(value, 0, 12)
end function

/// Performs the 'replaceSlashes' step in MiniDoc's shared utility layer.
/// @internal
function replaceSlashes(value)
  if typeof(value) != "string" then return "" end if
  return strings.replaceAll(value, "\\", "/")
end function

/// Performs the 'isAbsolute' step in MiniDoc's shared utility layer.
/// @internal
function isAbsolute(path)
  path = replaceSlashes(path)
  if len(path) <= 0 then return false end if
  if path[0] == "/" then return true end if
  return len(path) >= 2 and path[1] == ":"
end function

/// Performs the 'normalizePath' step in MiniDoc's shared utility layer.
/// @internal
function normalizePath(path)
  path = replaceSlashes(path)
  if path == "" then return "." end if
  prefix = ""
  absolute = false
  start = 0
  if len(path) >= 2 and path[1] == ":" then
    prefix = strings.toUpperAscii(path[0]) + ":"
    start = 2
    if start < len(path) and path[start] == "/" then
      absolute = true
      start = start + 1
    end if
  else if path[0] == "/" then
    prefix = "/"
    absolute = true
    start = 1
  end if

  remainder = ""
  if start < len(path) then remainder = strings.substr(path, start, len(path) - start) end if
  raw = strings.split(remainder, "/")
  parts = []
  for i = 0 to len(raw) - 1
    part = raw[i]
    if part == "" or part == "." then continue end if
    if part == ".." then
      if len(parts) > 0 and parts[len(parts) - 1] != ".." then
        next = []
        if len(parts) > 1 then
          next = array(len(parts) - 1)
          for j = 0 to len(next) - 1
            next[j] = parts[j]
          end for
        end if
        parts = next
      else if absolute == false then
        parts = parts + [part]
      end if
    else
      parts = parts + [part]
    end if
  end for

  tail = strings.join(parts, "/")
  if prefix == "/" then
    if tail == "" then return "/" end if
    return "/" + tail
  end if
  if prefix != "" then
    if absolute then
      if tail == "" then return prefix + "/" end if
      return prefix + "/" + tail
    end if
    if tail == "" then return prefix end if
    return prefix + tail
  end if
  if tail == "" then return "." end if
  return tail
end function

/// Performs the 'joinPath' step in MiniDoc's shared utility layer.
/// @internal
function joinPath(left, right)
  if typeof(right) != "string" or right == "" then return normalizePath(left) end if
  if isAbsolute(right) then return normalizePath(right) end if
  if typeof(left) != "string" or left == "" or left == "." then return normalizePath(right) end if
  return normalizePath(replaceSlashes(left) + "/" + replaceSlashes(right))
end function

/// Performs the 'currentDirectory' step in MiniDoc's shared utility layer.
/// @internal
function currentDirectory()
  value = process.currentDirectory()
  if typeof(value) != "string" or value == "" then return "." end if
  return normalizePath(value)
end function

/// Performs the 'absolutePath' step in MiniDoc's shared utility layer.
/// @internal
function absolutePath(path, base)
  if isAbsolute(path) then return normalizePath(path) end if
  if typeof(base) != "string" or base == "" then base = currentDirectory() end if
  return joinPath(base, path)
end function

/// Performs the 'directoryName' step in MiniDoc's shared utility layer.
/// @internal
function directoryName(path)
  path = normalizePath(path)
  at = strings.lastIndexOf(path, "/")
  if typeof(at) != "int" or at < 0 then return "." end if
  if at == 0 then return "/" end if
  if at == 2 and len(path) >= 3 and path[1] == ":" then return strings.substr(path, 0, 3) end if
  return strings.substr(path, 0, at)
end function

/// Performs the 'fileName' step in MiniDoc's shared utility layer.
/// @internal
function fileName(path)
  path = replaceSlashes(path)
  at = strings.lastIndexOf(path, "/")
  if typeof(at) != "int" or at < 0 then return path end if
  return strings.substr(path, at + 1, len(path) - at - 1)
end function

/// Performs the 'stem' step in MiniDoc's shared utility layer.
/// @internal
function stem(path)
  name = fileName(path)
  dot = strings.lastIndexOf(name, ".")
  if typeof(dot) != "int" or dot <= 0 then return name end if
  return strings.substr(name, 0, dot)
end function

/// Performs the 'pathKey' step in MiniDoc's shared utility layer.
/// @internal
function pathKey(path)
  normalized = normalizePath(path)
#if TARGET_OS == "windows"
  return strings.toLowerAscii(normalized)
#else
  return normalized
#endif
end function

/// Performs the 'pathsEqual' step in MiniDoc's shared utility layer.
/// @internal
function pathsEqual(left, right)
  return pathKey(left) == pathKey(right)
end function

/// Reports whether a file belongs to the documented project rather than an imported dependency.
/// @param path Absolute or normalized source-file path.
/// @param entry Configured project entry path.
/// @param source_roots Configured roots whose source files belong to the project.
/// @internal
function isProjectSource(path, entry, source_roots)
  if pathsEqual(path, entry) then return true end if
  if typeof(source_roots) != "array" or len(source_roots) == 0 then return false end if
  file_key = pathKey(path)
  for i = 0 to len(source_roots) - 1
    root_key = pathKey(source_roots[i])
    if file_key == root_key or strings.startsWith(file_key, root_key + "/") then return true end if
  end for
  return false
end function

/// Performs the 'relativePath' step in MiniDoc's shared utility layer.
/// @internal
function relativePath(base, target)
  base = normalizePath(base)
  target = normalizePath(target)
  left = strings.split(base, "/")
  right = strings.split(target, "/")
  count = len(left)
  if len(right) < count then count = len(right) end if
  common = 0
  while common < count
#if TARGET_OS == "windows"
    if strings.toLowerAscii(left[common]) != strings.toLowerAscii(right[common]) then break end if
#else
    if left[common] != right[common] then break end if
#endif
    common = common + 1
  end while
  if common == 0 and isAbsolute(base) and isAbsolute(target) then return target end if
  parts = []
  if common < len(left) then
    for i = common to len(left) - 1
      if left[i] != "" then parts = parts + [".."] end if
    end for
  end if
  if common < len(right) then
    for i = common to len(right) - 1
      if right[i] != "" then parts = parts + [right[i]] end if
    end for
  end if
  if len(parts) == 0 then return "." end if
  return strings.join(parts, "/")
end function

/// Performs the 'ensureDirectory' step in MiniDoc's shared utility layer.
/// @internal
function ensureDirectory(path)
  path = normalizePath(path)
  if path == "" or path == "." then return true end if
  if fs.isDir(path) then return true end if
  parent = directoryName(path)
  if parent != path and parent != "." then
    created_parent = ensureDirectory(parent)
    if created_parent != true then return created_parent end if
  end if
  result = fileio.createDirectory(path)
  if result == true or fs.isDir(path) then return true end if
  return result
end function

/// Performs the 'writeText' step in MiniDoc's shared utility layer.
/// @internal
function writeText(path, text)
  parent = directoryName(path)
  created = ensureDirectory(parent)
  if created != true then return error(1, "cannot create output directory: " + parent) end if
  result = fs.writeAllText(path, text)
  if result == true then return true end if
  if typeof(result) == "error" then return result end if
  return error(1, "cannot write output file: " + path)
end function

/// Removes files listed by a previous MiniDoc manifest that are no longer generated.
/// @param root Output directory containing the generated-file manifest.
/// @param generated Relative paths produced by the current render pass.
/// @since 0.4.0
function removeStaleGenerated(root, generated)
  manifest = joinPath(root, ".minidoc-output")
  if fs.isFile(manifest) == false then return true end if
  content = fs.readAllText(manifest)
  if typeof(content) != "string" then return true end if
  entries = strings.split(strings.replaceAll(content, "\r", ""), "\n")
  for i = 0 to len(entries) - 1
    entry = strings.trim(entries[i])
    if entry == "" or containsString(generated, entry) then continue end if
    normalized = normalizePath(entry)
    if isAbsolute(normalized) or normalized == ".." or strings.startsWith(normalized, "../") then continue end if
    target = joinPath(root, normalized)
    if fs.isFile(target) and fs.delete(target) == false then return error(1, "cannot remove stale generated file: " + target) end if
  end for
  return true
end function

/// Performs the 'readText' step in MiniDoc's shared utility layer.
/// @internal
function readText(path)
  result = fs.readAllText(path)
  if typeof(result) == "string" then return result end if
  if typeof(result) == "error" then return result end if
  return error(1, "cannot read file: " + path)
end function

/// Reads a text file when it exists and returns an empty string otherwise.
/// @internal
function _optionalText(path)
  if fs.isFile(path) == false then return "" end if
  value = fs.readAllText(path)
  if typeof(value) != "string" then return "" end if
  return strings.trim(value)
end function

/// Resolves the Git metadata directory for a repository or worktree.
/// @internal
function _gitDirectory(root)
  marker = joinPath(root, ".git")
  if fs.isDir(marker) then return marker end if
  content = _optionalText(marker)
  prefix = "gitdir:"
  if strings.startsWith(strings.toLowerAscii(content), prefix) == false then return "" end if
  location = strings.trim(strings.substr(content, len(prefix), len(content) - len(prefix)))
  return absolutePath(location, root)
end function

/// Finds a revision in one packed-refs file.
/// @internal
function _packedRevision(path, reference)
  content = _optionalText(path)
  if content == "" then return "" end if
  lines = strings.split(strings.replaceAll(content, "\r", ""), "\n")
  for i = 0 to len(lines) - 1
    line = strings.trim(lines[i])
    if line == "" or strings.startsWith(line, "#") or strings.startsWith(line, "^") then continue end if
    fields = strings.split(line, " ")
    if len(fields) >= 2 and fields[1] == reference then return fields[0] end if
  end for
  return ""
end function

/// Returns the exact Git commit recorded by HEAD without invoking Git.
/// @param root Repository root containing a .git directory or worktree marker.
/// @since 0.4.0
function gitRevision(root)
  current = normalizePath(root)
  while true
    git_dir = _gitDirectory(current)
    if git_dir != "" then
      head = _optionalText(joinPath(git_dir, "HEAD"))
      if head == "" then return "" end if
      if strings.startsWith(head, "ref:") == false then return head end if
      reference = strings.trim(strings.substr(head, 4, len(head) - 4))
      revision = _optionalText(joinPath(git_dir, reference))
      if revision != "" then return revision end if
      revision = _packedRevision(joinPath(git_dir, "packed-refs"), reference)
      if revision != "" then return revision end if

      common = _optionalText(joinPath(git_dir, "commondir"))
      if common == "" then return "" end if
      common_dir = absolutePath(common, git_dir)
      revision = _optionalText(joinPath(common_dir, reference))
      if revision != "" then return revision end if
      return _packedRevision(joinPath(common_dir, "packed-refs"), reference)
    end if
    parent = directoryName(current)
    if parent == current then break end if
    current = parent
  end while
  return ""
end function

/// Performs the 'isWhitespaceChar' step in MiniDoc's shared utility layer.
/// @internal
function isWhitespaceChar(ch)
  return ch == " " or ch == "\t" or ch == "\r" or ch == "\n"
end function

/// Performs the 'onlyWhitespace' step in MiniDoc's shared utility layer.
/// @internal
function onlyWhitespace(source, start_pos, end_pos)
  if typeof(source) != "string" then return false end if
  if start_pos < 0 then start_pos = 0 end if
  if end_pos > len(source) then end_pos = len(source) end if
  if end_pos <= start_pos then return true end if
  for i = start_pos to end_pos - 1
    if not isWhitespaceChar(source[i]) then return false end if
  end for
  return true
end function

/// Performs the 'lineAndColumn' step in MiniDoc's shared utility layer.
/// @internal
function lineAndColumn(source, position)
  if typeof(position) != "int" or position < 0 then position = 0 end if
  if position > len(source) then position = len(source) end if
  line = 1
  column = 1
  if position > 0 then
    for i = 0 to position - 1
      if source[i] == "\n" then
        line = line + 1
        column = 1
      else
        column = column + 1
      end if
    end for
  end if
  return [line, column]
end function

/// Performs the 'hashText' step in MiniDoc's shared utility layer.
/// @internal
function hashText(value)
  if typeof(value) != "string" then value = "" + value end if
  raw = bytes(value)
  h = 2166136261
  if len(raw) > 0 then
    for i = 0 to len(raw) - 1
      h = ((h ^ raw[i]) * 16777619) & 0x7FFFFFFF
    end for
  end if
  return h
end function

/// Performs the 'slug' step in MiniDoc's shared utility layer.
/// @internal
function slug(value)
  value = strings.toLowerAscii("" + value)
  raw = bytes(value)
  writer = builders.StringBuilder.withCapacity(len(raw) + 16)
  dash = false
  if len(raw) > 0 then
    for i = 0 to len(raw) - 1
      ch = raw[i]
      alpha = ch >= 97 and ch <= 122
      digit = ch >= 48 and ch <= 57
      if alpha or digit then
        if dash and writer.len() > 0 then writer.appendString("-") end if
        writer.appendString(decode(bytes([ch])))
        dash = false
      else
        dash = true
      end if
    end for
  end if
  result = writer.toString()
  if result == "" then result = "item" end if
  return result
end function

/// Performs the 'stableSlug' step in MiniDoc's shared utility layer.
/// @internal
function stableSlug(value)
  return slug(value) + "-" + hashText(value)
end function

/// Performs the 'htmlEscape' step in MiniDoc's shared utility layer.
/// @internal
function htmlEscape(value)
  value = "" + value
  value = strings.replaceAll(value, "&", "&amp;")
  value = strings.replaceAll(value, "<", "&lt;")
  value = strings.replaceAll(value, ">", "&gt;")
  value = strings.replaceAll(value, "\"", "&quot;")
  value = strings.replaceAll(value, "'", "&#39;")
  return value
end function

/// Performs the 'markdownTableEscape' step in MiniDoc's shared utility layer.
/// @internal
function markdownTableEscape(value)
  value = "" + value
  value = strings.replaceAll(value, "\\", "\\\\")
  value = strings.replaceAll(value, "|", "\\|")
  value = strings.replaceAll(value, "\r", "")
  value = strings.replaceAll(value, "\n", " ")
  return value
end function

/// Performs the 'jsonEscape' step in MiniDoc's shared utility layer.
/// @internal
function jsonEscape(value)
  value = "" + value
  value = strings.replaceAll(value, "\\", "\\\\")
  value = strings.replaceAll(value, "\"", "\\\"")
  value = strings.replaceAll(value, "\r", "\\r")
  value = strings.replaceAll(value, "\n", "\\n")
  value = strings.replaceAll(value, "\t", "\\t")
  return value
end function

/// Performs the 'sourceUrl' step in MiniDoc's shared utility layer.
/// @internal
function sourceUrl(repository, ref_name, relative_path, line)
  if repository == "" then return "" end if
  lower = strings.toLowerAscii(strings.trim(repository))
  if not strings.startsWith(lower, "https://") and not strings.startsWith(lower, "http://") then return "" end if
  normalized_path = replaceSlashes(relative_path)
  if normalized_path == ".." or strings.startsWith(normalized_path, "../") or isAbsolute(normalized_path) then return "" end if
  base = repository
  while strings.endsWith(base, "/")
    base = strings.substr(base, 0, len(base) - 1)
  end while
  result = base + "/blob/" + ref_name + "/" + normalized_path
  if line > 0 then result = result + "#L" + line end if
  return result
end function

/// Performs the '_stringLess' step in MiniDoc's shared utility layer.
/// @internal
function _stringLess(left, right)
  left_bytes = bytes(left)
  right_bytes = bytes(right)
  count = len(left_bytes)
  if len(right_bytes) < count then count = len(right_bytes) end if
  index = 0
  while index < count
    if left_bytes[index] < right_bytes[index] then return true end if
    if left_bytes[index] > right_bytes[index] then return false end if
    index = index + 1
  end while
  return len(left_bytes) < len(right_bytes)
end function

// Case-insensitive alphabetical comparison with the original spelling as a
// deterministic tie-breaker.
/// Performs the 'alphabeticalLess' step in MiniDoc's shared utility layer.
/// @internal
function alphabeticalLess(left, right)
  left_text = "" + left
  right_text = "" + right
  left_lower = strings.toLowerAscii(left_text)
  right_lower = strings.toLowerAscii(right_text)
  if left_lower == right_lower then return _stringLess(left_text, right_text) end if
  return _stringLess(left_lower, right_lower)
end function

/// Performs the 'sortedStrings' step in MiniDoc's shared utility layer.
/// @internal
function sortedStrings(values)
  result = []
  if typeof(values) == "array" and len(values) > 0 then
    for i = 0 to len(values) - 1
      result = result + [values[i]]
    end for
  end if
  // Keep sorting local and deterministic. The standard-library quicksort
  // currently computes its middle pivot with `/`, which yields a non-integer
  // index on sufficiently large arrays.
  index = 1
  while index < len(result)
    value = result[index]
    before = index - 1
    while before >= 0 and alphabeticalLess(value, result[before])
      result[before + 1] = result[before]
      before = before - 1
    end while
    result[before + 1] = value
    index = index + 1
  end while
  return result
end function

/// Performs the 'containsString' step in MiniDoc's shared utility layer.
/// @internal
function containsString(values, value)
  if typeof(values) != "array" or len(values) == 0 then return false end if
  for i = 0 to len(values) - 1
    if values[i] == value then return true end if
  end for
  return false
end function

/// Performs the 'addUnique' step in MiniDoc's shared utility layer.
/// @internal
function addUnique(values, value)
  if containsString(values, value) then return values end if
  return values + [value]
end function

/// Performs the 'isSafeUrl' step in MiniDoc's shared utility layer.
/// @internal
function isSafeUrl(value)
  lower = strings.toLowerAscii(strings.trim(value))
  return strings.startsWith(lower, "https://") or strings.startsWith(lower, "http://") or strings.startsWith(lower, "mailto:") or strings.startsWith(lower, "#") or (strings.contains(lower, ":") == false)
end function
