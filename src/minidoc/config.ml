/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Resolves MiniLang manifests, MiniDoc TOML files, defaults, and CLI overrides.

package minidoc.config

import std.fs as fs
import std.string as strings
import minidoc.model as model
import minidoc.util as util

/// Internal normalized representation of one TOML assignment.
/// @internal
struct TomlRow
  section,
  key,
  value,
  line,
end struct

/// Performs the '_unquote' step in MiniDoc's configuration pipeline.
/// @internal
function _unquote(value)
  value = strings.trim(value)
  if len(value) < 2 or value[0] != "\"" or value[len(value) - 1] != "\"" then
    return error(1, "expected a quoted string")
  end if
  value = strings.substr(value, 1, len(value) - 2)
  value = strings.replaceAll(value, "\\\"", "\"")
  value = strings.replaceAll(value, "\\\\", "\\")
  return value
end function

/// Performs the '_stringArray' step in MiniDoc's configuration pipeline.
/// @internal
function _stringArray(value)
  value = strings.trim(value)
  if len(value) < 2 or value[0] != "[" or value[len(value) - 1] != "]" then
    return error(1, "expected an array of strings")
  end if
  inner = strings.trim(strings.substr(value, 1, len(value) - 2))
  if inner == "" then return [] end if
  result = []
  i = 0
  while i < len(inner)
    while i < len(inner) and util.isWhitespaceChar(inner[i])
      i = i + 1
    end while
    if i >= len(inner) or inner[i] != "\"" then return error(1, "expected a quoted array item") end if
    start = i
    i = i + 1
    escaped = false
    while i < len(inner)
      if escaped then
        escaped = false
      else if inner[i] == "\\" then
        escaped = true
      else if inner[i] == "\"" then
        break
      end if
      i = i + 1
    end while
    if i >= len(inner) then return error(1, "unterminated string array item") end if
    item = _unquote(strings.substr(inner, start, i - start + 1))
    result = result + [item]
    i = i + 1
    while i < len(inner) and util.isWhitespaceChar(inner[i])
      i = i + 1
    end while
    if i < len(inner) then
      if inner[i] != "," then return error(1, "expected a comma between array items") end if
      i = i + 1
    end if
  end while
  return result
end function

/// Performs the '_boolean' step in MiniDoc's configuration pipeline.
/// @internal
function _boolean(value)
  value = strings.toLowerAscii(strings.trim(value))
  if value == "true" then return true end if
  if value == "false" then return false end if
  return error(1, "expected true or false")
end function

/// Performs the '_integer' step in MiniDoc's configuration pipeline.
/// @internal
function _integer(value)
  value = strings.trim(value)
  if value == "" then return error(1, "expected an integer") end if
  sign = 1
  i = 0
  if value[0] == "-" then
    sign = -1
    i = 1
  end if
  if i >= len(value) then return error(1, "expected an integer") end if
  result = 0
  while i < len(value)
    raw = bytes(value[i])
    if len(raw) != 1 or raw[0] < 48 or raw[0] > 57 then return error(1, "expected an integer") end if
    result = result * 10 + raw[0] - 48
    i = i + 1
  end while
  return result * sign
end function

/// Performs the '_rows' step in MiniDoc's configuration pipeline.
/// @internal
function _rows(path)
  text = util.readText(path)
  lines = strings.split(text, "\n")
  section = ""
  rows = []
  for i = 0 to len(lines) - 1
    line = strings.trim(strings.replaceAll(lines[i], "\r", ""))
    if line == "" or line[0] == "#" then continue end if
    if line[0] == "[" and line[len(line) - 1] == "]" then
      section = strings.toLowerAscii(strings.trim(strings.substr(line, 1, len(line) - 2)))
      continue
    end if
    eq = strings.indexOf(line, "=", 0)
    if typeof(eq) != "int" or eq <= 0 then return error(1, path + ":" + (i + 1) + ": invalid TOML assignment") end if
    key = strings.trim(strings.substr(line, 0, eq))
    value = strings.trim(strings.substr(line, eq + 1, len(line) - eq - 1))
    rows = rows + [TomlRow(section, key, value, i + 1)]
  end for
  return rows
end function

/// Performs the '_rowString' step in MiniDoc's configuration pipeline.
/// @internal
function _rowString(row, path)
  value = try(_unquote(row.value))
  if typeof(value) == "error" then return error(1, path + ":" + row.line + ": " + value.message) end if
  return value
end function

/// Performs the '_rowArray' step in MiniDoc's configuration pipeline.
/// @internal
function _rowArray(row, path)
  value = try(_stringArray(row.value))
  if typeof(value) == "error" then return error(1, path + ":" + row.line + ": " + value.message) end if
  return value
end function

/// Performs the '_rowBool' step in MiniDoc's configuration pipeline.
/// @internal
function _rowBool(row, path)
  value = try(_boolean(row.value))
  if typeof(value) == "error" then return error(1, path + ":" + row.line + ": " + value.message) end if
  return value
end function

/// Performs the '_rowInt' step in MiniDoc's configuration pipeline.
/// @internal
function _rowInt(row, path)
  value = try(_integer(row.value))
  if typeof(value) == "error" then return error(1, path + ":" + row.line + ": " + value.message) end if
  return value
end function

/// Performs the '_absoluteItems' step in MiniDoc's configuration pipeline.
/// @internal
function _absoluteItems(items, base)
  result = []
  if len(items) == 0 then return result end if
  for i = 0 to len(items) - 1
    result = result + [util.absolutePath(items[i], base)]
  end for
  return result
end function

/// Performs the '_manifestFromConfig' step in MiniDoc's configuration pipeline.
/// @internal
function _manifestFromConfig(path)
  rows = _rows(path)
  base = util.directoryName(path)
  if len(rows) == 0 then return "" end if
  for i = 0 to len(rows) - 1
    row = rows[i]
    if row.section == "project" and strings.toLowerAscii(row.key) == "manifest" then
      return util.absolutePath(_rowString(row, path), base)
    end if
  end for
  return ""
end function

/// Performs the '_applyProject' step in MiniDoc's configuration pipeline.
/// @internal
function _applyProject(cfg, path)
  rows = _rows(path)
  base = util.directoryName(path)
  cfg.project_file = path
  include_dirs = []
  if len(rows) > 0 then
    for i = 0 to len(rows) - 1
      row = rows[i]
      key = strings.toLowerAscii(row.key)
      if row.section == "project" then
        if key == "entry" or key == "input" then
          cfg.entry = util.absolutePath(_rowString(row, path), base)
        else if key == "include" or key == "import_paths" then
          include_dirs = _absoluteItems(_rowArray(row, path), base)
        else if key == "target" then
          cfg.target = _rowString(row, path)
        else if key == "output" or key == "subsystem" or key == "object_pipeline" or key == "incremental" or key == "cache_dir" or key == "compiler_args" then
          // Compiler-only project fields are valid but irrelevant to MiniDoc.
        else
          return error(1, path + ":" + row.line + ": unknown MiniLang project field: " + row.key)
        end if
      else if row.section == "defines" then
        cfg.defines = cfg.defines + [row.key + "=" + row.value]
      end if
    end for
  end if
  cfg.include_dirs = include_dirs
  if cfg.entry == "" then return error(1, path + ": project.entry is required") end if
  if cfg.project_name == "" then cfg.project_name = util.fileName(base) end if
  return cfg
end function

/// Performs the '_applyMiniDoc' step in MiniDoc's configuration pipeline.
/// @internal
function _applyMiniDoc(cfg, path)
  rows = _rows(path)
  base = util.directoryName(path)
  cfg.config_file = path
  if len(rows) == 0 then return cfg end if
  for i = 0 to len(rows) - 1
    row = rows[i]
    section = row.section
    raw_key = row.key
    key = strings.toLowerAscii(raw_key)
    if section == "project" then
      if key == "name" then cfg.project_name = _rowString(row, path)
      else if key == "description" then cfg.project_description = _rowString(row, path)
      else if key == "manifest" then cfg.project_file = util.absolutePath(_rowString(row, path), base)
      else if key == "entry" then cfg.entry = util.absolutePath(_rowString(row, path), base)
      else if key == "source_roots" then cfg.source_roots = _absoluteItems(_rowArray(row, path), base)
      else if key == "include" or key == "import_paths" then cfg.include_dirs = _absoluteItems(_rowArray(row, path), base)
      else if key == "exclude" then cfg.excludes = cfg.excludes + _rowArray(row, path)
      else if key == "target" then cfg.target = _rowString(row, path)
      else return error(1, path + ":" + row.line + ": unknown [project] field: " + key)
      end if
    else if section == "defines" then
      cfg.defines = cfg.defines + [raw_key + "=" + row.value]
    else if section == "documentation" then
      if key == "include_internal" then cfg.include_internal = _rowBool(row, path)
      else if key == "reachable_only" then cfg.reachable_only = _rowBool(row, path)
      else if key == "strict" then cfg.strict = _rowBool(row, path)
      else if key == "dependencies" then cfg.dependency_mode = strings.toLowerAscii(_rowString(row, path))
      else if key == "contract_warnings" then cfg.contract_warnings = strings.toLowerAscii(_rowString(row, path))
      else if key == "summary_quality_warnings" then cfg.summary_quality_warnings = strings.toLowerAscii(_rowString(row, path))
      else if key == "duplicate_summary_threshold" then cfg.duplicate_summary_threshold = _rowInt(row, path)
      else if key == "page_granularity" then
        // Container pages are used by the first implementation.
        ignored_granularity = _rowString(row, path)
      else return error(1, path + ":" + row.line + ": unknown [documentation] field: " + key)
      end if
    else if section == "output" then
      if key == "formats" then cfg.formats = _rowArray(row, path)
      else if key == "html_dir" then cfg.html_out = util.absolutePath(_rowString(row, path), base)
      else if key == "markdown_dir" then cfg.markdown_out = util.absolutePath(_rowString(row, path), base)
      else if key == "markdown_profile" then cfg.markdown_profile = _rowString(row, path)
      else return error(1, path + ":" + row.line + ": unknown [output] field: " + key)
      end if
    else if section == "graphs" then
      if key == "imports" then cfg.graph_imports = _rowBool(row, path)
      else if key == "calls" then cfg.graph_calls = _rowBool(row, path)
      else if key == "types" then cfg.graph_types = _rowBool(row, path)
      else if key == "max_nodes" then cfg.graph_max_nodes = _rowInt(row, path)
      else if key == "granularity" then cfg.graph_granularity = strings.toLowerAscii(_rowString(row, path))
      else if key == "hide_empty" then cfg.hide_empty_graphs = _rowBool(row, path)
      else if key == "format" then ignored_format = _rowString(row, path)
      else return error(1, path + ":" + row.line + ": unknown [graphs] field: " + key)
      end if
    else if section == "links" then
      if key == "repository" then cfg.repository = _rowString(row, path)
      else if key == "ref" then cfg.repository_ref = _rowString(row, path)
      else if key == "revision" then cfg.source_revision = _rowString(row, path)
      else return error(1, path + ":" + row.line + ": unknown [links] field: " + key)
      end if
    else
      return error(1, path + ":" + row.line + ": unknown configuration section: " + section)
    end if
  end for
  return cfg
end function

/// Performs the '_argValue' step in MiniDoc's configuration pipeline.
/// @internal
function _argValue(args, names)
  if len(args) < 2 then return "" end if
  for i = 0 to len(args) - 2
    if util.containsString(names, args[i]) then return args[i + 1] end if
  end for
  return ""
end function

/// Performs the '_applyFormats' step in MiniDoc's configuration pipeline.
/// @internal
function _applyFormats(cfg, raw)
  raw = strings.toLowerAscii(strings.trim(raw))
  if raw == "all" then cfg.formats = ["html", "markdown"] return cfg end if
  values = strings.split(raw, ",")
  result = []
  for i = 0 to len(values) - 1
    value = strings.trim(values[i])
    if value == "md" then value = "markdown" end if
    if value != "html" and value != "markdown" then return error(1, "unsupported format: " + value) end if
    result = util.addUnique(result, value)
  end for
  cfg.formats = result
  return cfg
end function

/// Performs the '_applyGraphSelection' step in MiniDoc's configuration pipeline.
/// @internal
function _applyGraphSelection(cfg, raw)
  cfg.graph_imports = false
  cfg.graph_calls = false
  cfg.graph_types = false
  values = strings.split(strings.toLowerAscii(raw), ",")
  for i = 0 to len(values) - 1
    value = strings.trim(values[i])
    if value == "imports" then cfg.graph_imports = true
    else if value == "calls" then cfg.graph_calls = true
    else if value == "types" then cfg.graph_types = true
    else return error(1, "unknown graph kind: " + value)
    end if
  end for
  return cfg
end function

/// Performs the '_applyCli' step in MiniDoc's configuration pipeline.
/// @internal
function _applyCli(cfg, args)
  cwd = util.currentDirectory()
  i = 0
  while i < len(args)
    arg = args[i]
    if arg == "--project" or arg == "--config" then
      if i + 1 >= len(args) then return error(1, arg + " expects a path") end if
      i = i + 2
      continue
    end if
    if arg == "-I" or arg == "--import-path" then
      if i + 1 >= len(args) then return error(1, arg + " expects a directory") end if
      cfg.include_dirs = cfg.include_dirs + [util.absolutePath(args[i + 1], cwd)]
      i = i + 2
      continue
    end if
    if arg == "-D" or arg == "--define" then
      if i + 1 >= len(args) then return error(1, arg + " expects NAME or NAME=VALUE") end if
      cfg.defines = cfg.defines + [args[i + 1]]
      i = i + 2
      continue
    end if
    if strings.startsWith(arg, "-D") and len(arg) > 2 then
      cfg.defines = cfg.defines + [strings.substr(arg, 2, len(arg) - 2)]
      i = i + 1
      continue
    end if
    if arg == "--target" or arg == "--format" or arg == "--html-out" or arg == "--md-out" or arg == "--md-profile" or arg == "--graph" or arg == "--name" or arg == "--description" or arg == "--dependencies" or arg == "--contract-warnings" or arg == "--summary-quality" or arg == "--graph-granularity" or arg == "--revision" then
      if i + 1 >= len(args) then return error(1, arg + " expects a value") end if
      value = args[i + 1]
      if arg == "--target" then cfg.target = value
      else if arg == "--format" then cfg = _applyFormats(cfg, value)
      else if arg == "--html-out" then cfg.html_out = util.absolutePath(value, cwd)
      else if arg == "--md-out" then cfg.markdown_out = util.absolutePath(value, cwd)
      else if arg == "--md-profile" then cfg.markdown_profile = strings.toLowerAscii(value)
      else if arg == "--graph" then cfg = _applyGraphSelection(cfg, value)
      else if arg == "--name" then cfg.project_name = value
      else if arg == "--description" then cfg.project_description = value
      else if arg == "--dependencies" then cfg.dependency_mode = strings.toLowerAscii(value)
      else if arg == "--contract-warnings" then cfg.contract_warnings = strings.toLowerAscii(value)
      else if arg == "--summary-quality" then cfg.summary_quality_warnings = strings.toLowerAscii(value)
      else if arg == "--graph-granularity" then cfg.graph_granularity = strings.toLowerAscii(value)
      else if arg == "--revision" then cfg.source_revision = value
      end if
      i = i + 2
      continue
    end if
    if arg == "--include-internal" or arg == "--private" then cfg.include_internal = true
    else if arg == "--reachable-only" then cfg.reachable_only = true
    else if arg == "--strict" then cfg.strict = true
    else if arg == "--check" then cfg.check_only = true
    else if arg == "--keep-going" then cfg.keep_going = true
    else if arg == "--show-empty-graphs" then cfg.hide_empty_graphs = false
    else if arg == "--no-graphs" then
      cfg.graph_imports = false
      cfg.graph_calls = false
      cfg.graph_types = false
    else if arg == "--help" or arg == "-h" or arg == "--version" or arg == "-version" then
      // Handled by the application entry point.
    else if strings.startsWith(arg, "-") then
      return error(1, "unknown option: " + arg)
    else
      cfg.entry = util.absolutePath(arg, cwd)
    end if
    i = i + 1
  end while
  return cfg
end function

/// Loads and validates the effective MiniDoc configuration.
/// @param args Command-line arguments that select inputs and override settings.
/// @since 0.1.0
function load(args)
  cwd = util.currentDirectory()
  config_arg = _argValue(args, ["--config"])
  project_arg = _argValue(args, ["--project"])
  config_path = ""
  project_path = ""
  if config_arg != "" then config_path = util.absolutePath(config_arg, cwd) end if
  if project_arg != "" then project_path = util.absolutePath(project_arg, cwd) end if
  if config_path != "" and fs.isFile(config_path) == false then return error(1, "MiniDoc configuration not found: " + config_path) end if
  if project_path == "" and config_path != "" then project_path = _manifestFromConfig(config_path) end if
  if project_path != "" and fs.isFile(project_path) == false then return error(1, "MiniLang project manifest not found: " + project_path) end if

  cfg = model.defaultConfig()
  if project_path != "" then cfg = _applyProject(cfg, project_path) end if
  if config_path != "" then cfg = _applyMiniDoc(cfg, config_path) end if
  cfg = _applyCli(cfg, args)

  if cfg.entry == "" then return error(1, "no MiniLang entry file was configured") end if
  if fs.isFile(cfg.entry) == false then return error(1, "MiniLang entry file not found: " + cfg.entry) end if
  if cfg.project_name == "" then cfg.project_name = util.stem(cfg.entry) end if
  if len(cfg.source_roots) == 0 then cfg.source_roots = [util.directoryName(cfg.entry)] end if
  if cfg.markdown_profile != "repository" and cfg.markdown_profile != "wiki" then return error(1, "markdown profile must be repository or wiki") end if
  if cfg.dependency_mode != "none" and cfg.dependency_mode != "summary" and cfg.dependency_mode != "full" then return error(1, "documentation.dependencies must be none, summary, or full") end if
  if cfg.contract_warnings != "off" and cfg.contract_warnings != "public" and cfg.contract_warnings != "all" then return error(1, "documentation.contract_warnings must be off, public, or all") end if
  if cfg.summary_quality_warnings != "off" and cfg.summary_quality_warnings != "public" and cfg.summary_quality_warnings != "all" then return error(1, "documentation.summary_quality_warnings must be off, public, or all") end if
  if cfg.duplicate_summary_threshold < 2 then return error(1, "documentation.duplicate_summary_threshold must be at least 2") end if
  if cfg.graph_granularity != "package" and cfg.graph_granularity != "symbol" then return error(1, "graphs.granularity must be package or symbol") end if
  if cfg.graph_max_nodes < 1 then return error(1, "graphs.max_nodes must be positive") end if
  return cfg
end function
