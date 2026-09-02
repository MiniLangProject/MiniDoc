/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Discovers, parses, validates, and links MiniLang source files and imports.

package minidoc.loader

import std.fs as fs
import std.string as strings
import mlc.frontend as frontend
import mlc.minilang_parser as parser
import mlc.tools as tools
import minidoc.doc_comments as comments
import minidoc.model as model
import minidoc.util as util

/// Reports whether source starts with a recognized license declaration.
///
/// SPDX identifiers are accepted directly. Traditional headers must contain
/// both a copyright notice and license wording within the first 4 KiB.
/// @param source MiniLang source text to inspect.
/// @internal
function _hasLicenseHeader(source)
  if typeof(source) != "string" then return false end if
  prefix = source
  if len(prefix) > 4096 then prefix = strings.substr(prefix, 0, 4096) end if
  lower = strings.toLowerAscii(prefix)
  if strings.contains(lower, "spdx-license-identifier:") then return true end if
  return strings.contains(lower, "copyright") and (strings.contains(lower, "licensed under") or strings.contains(lower, "license:"))
end function

/// Performs the '_diagnostic' step in MiniDoc's source-loading pipeline.
/// @internal
function _diagnostic(project, severity, code, path, source, position, message)
  location = util.lineAndColumn(source, position)
  display_path = path
  if util.isAbsolute(path) then display_path = util.relativePath(project.root_dir, path) end if
  project.diagnostics = project.diagnostics + [model.newDiagnostic(severity, code, display_path, location[0], location[1], message)]
  if severity == "error" then project.complete = false end if
end function

/// Performs the '_isExcluded' step in MiniDoc's source-loading pipeline.
/// @internal
function _isExcluded(path, root, cfg)
  normalized = util.normalizePath(path)
  if util.pathsEqual(normalized, cfg.html_out) or util.pathsEqual(normalized, cfg.markdown_out) then return true end if
  relative = util.relativePath(root, normalized)
  parts = strings.split(util.replaceSlashes(relative), "/")
  if len(cfg.excludes) == 0 then return false end if
  for ei = 0 to len(cfg.excludes) - 1
    excluded = strings.toLowerAscii(util.replaceSlashes(cfg.excludes[ei]))
    if excluded == "" then continue end if
    if strings.toLowerAscii(relative) == excluded or strings.startsWith(strings.toLowerAscii(relative), excluded + "/") then return true end if
    for pi = 0 to len(parts) - 1
      if strings.toLowerAscii(parts[pi]) == excluded then return true end if
    end for
  end for
  return false
end function

/// Performs the '_collectTree' step in MiniDoc's source-loading pipeline.
/// @internal
function _collectTree(path, root, cfg, files, seen_dirs)
  key = util.pathKey(path)
  if util.containsString(seen_dirs, key) then return [files, seen_dirs] end if
  seen_dirs = seen_dirs + [key]
  if _isExcluded(path, root, cfg) then return [files, seen_dirs] end if
  names = try(fs.listDir(path))
  if typeof(names) == "error" then return [files, seen_dirs] end if
  names = util.sortedStrings(names)
  if len(names) == 0 then return [files, seen_dirs] end if
  for i = 0 to len(names) - 1
    child = util.joinPath(path, names[i])
    if _isExcluded(child, root, cfg) then continue end if
    if fs.isDir(child) then
      nested = _collectTree(child, root, cfg, files, seen_dirs)
      files = nested[0]
      seen_dirs = nested[1]
    else if fs.isFile(child) and strings.endsWith(strings.toLowerAscii(names[i]), ".ml") then
      files = util.addUnique(files, util.normalizePath(child))
    end if
  end for
  return [files, seen_dirs]
end function

/// Discovers source files selected by the effective configuration.
/// @param cfg Effective MiniDoc configuration.
/// @since 0.1.0
function discover(cfg)
  files = [util.normalizePath(cfg.entry)]
  if cfg.reachable_only then return files end if
  seen_dirs = []
  if len(cfg.source_roots) == 0 then return files end if
  for i = 0 to len(cfg.source_roots) - 1
    root = cfg.source_roots[i]
    if fs.isDir(root) == false then continue end if
    collected = _collectTree(root, root, cfg, files, seen_dirs)
    files = collected[0]
    seen_dirs = collected[1]
  end for
  return util.sortedStrings(files)
end function

/// Performs the '_programPackage' step in MiniDoc's source-loading pipeline.
/// @internal
function _programPackage(program)
  if typeof(program) != "array" or len(program) == 0 then return "" end if
  for i = 0 to len(program) - 1
    st = program[i]
    if tools.ast_kind(st) == "NamespaceDecl" then return st.name end if
  end for
  return ""
end function

/// Performs the '_fileId' step in MiniDoc's source-loading pipeline.
/// @internal
function _fileId(root, path)
  relative = util.relativePath(root, path)
  return "file-" + util.stableSlug(relative)
end function

/// Performs the '_findFile' step in MiniDoc's source-loading pipeline.
/// @internal
function _findFile(project, path)
  if len(project.files) == 0 then return 0 end if
  for i = 0 to len(project.files) - 1
    if util.pathsEqual(project.files[i].path, path) then return project.files[i] end if
  end for
  return 0
end function

/// Performs the '_resolveImport' step in MiniDoc's source-loading pipeline.
/// @internal
function _resolveImport(request, importer_path, cfg)
  if util.isAbsolute(request) then
    direct = util.normalizePath(request)
    if fs.isFile(direct) then return [direct] end if
    return []
  end if
  roots = [util.directoryName(importer_path), util.directoryName(cfg.entry)] + cfg.include_dirs
  matches = []
  for i = 0 to len(roots) - 1
    candidate = util.joinPath(roots[i], request)
    if fs.isFile(candidate) then
      key = util.pathKey(candidate)
      duplicate = false
      if len(matches) > 0 then
        for j = 0 to len(matches) - 1
          if util.pathKey(matches[j]) == key then duplicate = true break end if
        end for
      end if
      if duplicate == false then matches = matches + [candidate] end if
    end if
  end for
  return matches
end function

/// Performs the '_parseFile' step in MiniDoc's source-loading pipeline.
/// @internal
function _parseFile(project, path, reachable)
  source = try(util.readText(path))
  if typeof(source) == "error" then
    _diagnostic(project, "error", "MD1001", path, "", 0, source.message)
    return 0
  end if
  if util.isProjectSource(path, project.config.entry, project.config.source_roots) and _hasLicenseHeader(source) == false then
    _diagnostic(project, "warning", "MD1201", path, source, 0, "source file has no recognized license header")
  end if
  normalized = frontend.normalize_code_for_tokenizer(source)
  processed = parser.preprocess_compile_directives(normalized, path)
  if typeof(processed) == "struct" and typeof(try(processed.message)) == "string" then
    severity = "warning"
    if reachable then severity = "error" end if
    _diagnostic(project, severity, "MD1002", path, normalized, processed.pos, processed.message)
    processed = normalized
  end if

  program = []
  if project.config.keep_going then
    result = parser.parse_program_keepgoing(processed, path, 100)
    program = result.program
    if typeof(result.errors) == "array" and len(result.errors) > 0 then
      for ei = 0 to len(result.errors) - 1
        issue = result.errors[ei]
        severity2 = "warning"
        if reachable then severity2 = "error" end if
        _diagnostic(project, severity2, "MD1003", path, processed, issue.pos, issue.message)
      end for
    end if
  else
    result2 = parser.parse_program(processed, path)
    if typeof(result2) == "struct" and typeof(try(result2.message)) == "string" then
      severity3 = "warning"
      if reachable then severity3 = "error" end if
      _diagnostic(project, severity3, "MD1003", path, processed, result2.pos, result2.message)
    else
      program = result2
    end if
  end if

  docs = comments.scan(processed)
  file_doc = comments.fileDocumentation(docs)
  relative = util.relativePath(project.root_dir, path)
  id = _fileId(project.root_dir, path)
  return model.FileDoc(id, path, relative, _programPackage(program), file_doc.summary, file_doc.details, [], [], reachable, source, processed, program, docs)
end function

/// Performs the '_isReachable' step in MiniDoc's source-loading pipeline.
/// @internal
function _isReachable(reachable_paths, path)
  return util.containsString(reachable_paths, util.pathKey(path))
end function

/// Performs the '_markReachable' step in MiniDoc's source-loading pipeline.
/// @internal
function _markReachable(project, path)
  if len(project.files) == 0 then return end if
  for i = 0 to len(project.files) - 1
    if util.pathsEqual(project.files[i].path, path) then project.files[i].reachable = true end if
  end for
end function

/// Performs the '_loadImports' step in MiniDoc's source-loading pipeline.
/// @internal
function _loadImports(project, file, queue, reachable_paths)
  if typeof(file.program) != "array" or len(file.program) == 0 then return [queue, reachable_paths] end if
  for i = 0 to len(file.program) - 1
    st = file.program[i]
    if tools.ast_kind(st) != "Import" then continue end if
    request = st.path
    matches = _resolveImport(request, file.path, project.config)
    target_path = ""
    target_id = ""
    if len(matches) == 0 then
      severity = "warning"
      if file.reachable then severity = "error" end if
      _diagnostic(project, severity, "MD1101", file.path, file.processed_source, st._pos, "import not found: " + request)
    else if len(matches) > 1 then
      severity2 = "warning"
      if file.reachable then severity2 = "error" end if
      _diagnostic(project, severity2, "MD1102", file.path, file.processed_source, st._pos, "ambiguous import: " + request)
    else
      target_path = matches[0]
      target_id = _fileId(project.root_dir, target_path)
      if _isReachable(reachable_paths, target_path) == false and file.reachable then
        reachable_paths = reachable_paths + [util.pathKey(target_path)]
        _markReachable(project, target_path)
      end if
      queue = util.addUnique(queue, target_path)
    end if
    alias = ""
    module_name = ""
    if typeof(st.alias) == "string" then alias = st.alias end if
    if typeof(st.module) == "string" then module_name = st.module end if
    file.imports = file.imports + [model.ImportDoc(request, alias, module_name, file.id, target_id, target_path, st._pos)]
    if target_id != "" then project.relations = project.relations + [model.RelationDoc(file.id, target_id, "imports", "exact", request)] end if
  end for
  return [queue, reachable_paths]
end function

/// Loads all selected files and reachable imports into a project model.
/// @param cfg Effective MiniDoc configuration.
/// @since 0.1.0
function loadProject(cfg)
  configured_target = parser.set_compile_target(cfg.target)
  if typeof(configured_target) == "struct" and typeof(try(configured_target.message)) == "string" then return error(1, configured_target.message) end if
  configured_defines = parser.set_compile_defines(cfg.defines)
  if typeof(configured_defines) == "struct" and typeof(try(configured_defines.message)) == "string" then return error(1, configured_defines.message) end if

  root_dir = util.directoryName(cfg.entry)
  if cfg.project_file != "" then root_dir = util.directoryName(cfg.project_file)
  else if cfg.config_file != "" then root_dir = util.directoryName(cfg.config_file)
  end if
  project = model.emptyProject(cfg, root_dir)
  // Resolve the complete reachable graph before scanning orphan source files.
  // This preserves reachability even when an orphan sorts before its importer.
  queue = [util.normalizePath(cfg.entry)]
  discovered = discover(cfg)
  discovery_added = cfg.reachable_only
  reachable_paths = [util.pathKey(cfg.entry)]
  visited = []
  cursor = 0
  while cursor < len(queue) or discovery_added == false
    if cursor >= len(queue) and discovery_added == false then
      if len(discovered) > 0 then
        for di = 0 to len(discovered) - 1
          queue = util.addUnique(queue, discovered[di])
        end for
      end if
      discovery_added = true
      continue
    end if
    path = queue[cursor]
    cursor = cursor + 1
    key = util.pathKey(path)
    if util.containsString(visited, key) then continue end if
    visited = visited + [key]
    reachable = _isReachable(reachable_paths, path)
    file = _parseFile(project, path, reachable)
    if typeof(file) != "struct" then continue end if
    project.files = project.files + [file]
    imports = _loadImports(project, file, queue, reachable_paths)
    queue = imports[0]
    reachable_paths = imports[1]
  end while

  if cfg.reachable_only then
    kept = []
    if len(project.files) > 0 then
      for i = 0 to len(project.files) - 1
        if project.files[i].reachable then kept = kept + [project.files[i]] end if
      end for
    end if
    project.files = kept
  end if
  return project
end function
