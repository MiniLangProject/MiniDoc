/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Generates repository- and wiki-compatible Markdown documentation trees.

package minidoc.render_markdown

import std.string as strings
import std.string_builder as builders
import minidoc.doc_comments as comments
import minidoc.graph as graph
import minidoc.util as util

/// Performs the '_visible' step in MiniDoc's Markdown renderer.
/// @internal
function _visible(project, doc_symbol)
  return project.config.include_internal or doc_symbol.internal == false
end function

/// Performs the '_isType' step in MiniDoc's Markdown renderer.
/// @internal
function _isType(doc_symbol)
  return doc_symbol.kind == "struct" or doc_symbol.kind == "extern_struct" or doc_symbol.kind == "interface" or doc_symbol.kind == "enum"
end function

/// Performs the '_symbolById' step in MiniDoc's Markdown renderer.
/// @internal
function _symbolById(project, id)
  if len(project.symbols) == 0 then return 0 end if
  for i = 0 to len(project.symbols) - 1
    if project.symbols[i].id == id then return project.symbols[i] end if
  end for
  return 0
end function

/// Performs the '_fileById' step in MiniDoc's Markdown renderer.
/// @internal
function _fileById(project, id)
  if len(project.files) == 0 then return 0 end if
  for i = 0 to len(project.files) - 1
    if project.files[i].id == id then return project.files[i] end if
  end for
  return 0
end function

/// Performs the '_filePage' step in MiniDoc's Markdown renderer.
/// @internal
function _filePage(file)
  return "File-" + util.stableSlug(file.relative_path) + ".md"
end function

/// Performs the '_typePage' step in MiniDoc's Markdown renderer.
/// @internal
function _typePage(doc_symbol)
  return "Type-" + util.stableSlug(doc_symbol.qualified_name) + ".md"
end function

/// Performs the '_packagePage' step in MiniDoc's Markdown renderer.
/// @internal
function _packagePage(name)
  return "Package-" + util.stableSlug(name) + ".md"
end function

/// Performs the '_ownerType' step in MiniDoc's Markdown renderer.
/// @internal
function _ownerType(project, doc_symbol)
  current = doc_symbol
  while typeof(current) == "struct" and current.container_id != ""
    parent = _symbolById(project, current.container_id)
    if typeof(parent) != "struct" then break end if
    if _isType(parent) then return parent end if
    current = parent
  end while
  return 0
end function

/// Performs the '_symbolLink' step in MiniDoc's Markdown renderer.
/// @internal
function _symbolLink(project, doc_symbol)
  if _isType(doc_symbol) then return _typePage(doc_symbol) end if
  owner = _ownerType(project, doc_symbol)
  if typeof(owner) == "struct" then return _typePage(owner) + "#" + doc_symbol.id end if
  file = _fileById(project, doc_symbol.file_id)
  if typeof(file) == "struct" then return _filePage(file) + "#" + doc_symbol.id end if
  return "Symbols.md#" + doc_symbol.id
end function

/// Performs the '_appendTagSections' step in MiniDoc's Markdown renderer.
/// @internal
function _appendTagSections(writer, doc_symbol)
  returns_text = ""
  since = ""
  deprecated = ""
  examples = []
  errors = []
  see_items = []
  if len(doc_symbol.tags) > 0 then
    for i = 0 to len(doc_symbol.tags) - 1
      tag = doc_symbol.tags[i]
      if tag.name == "returns" then returns_text = tag.text
      else if tag.name == "since" then since = tag.key
      else if tag.name == "deprecated" then deprecated = tag.text
      else if tag.name == "example" then examples = examples + [tag.text]
      else if tag.name == "error" then errors = errors + [tag]
      else if tag.name == "see" then see_items = see_items + [tag]
      end if
    end for
  end if
  if deprecated != "" or doc_symbol.deprecated then
    writer.appendString("\n> **Deprecated.** ")
    if deprecated == "" then deprecated = "This API is deprecated." end if
    writer.appendString(deprecated)
    writer.appendString("\n")
  end if
  if returns_text != "" then
    writer.appendString("\n**Returns:** ")
    writer.appendString(returns_text)
    writer.appendString("\n")
  end if
  if len(errors) > 0 then
    errors = _sortTags(errors)
    writer.appendString("\n**Errors**\n\n")
    for i = 0 to len(errors) - 1
      writer.appendString("- `")
      writer.appendString(errors[i].key)
      writer.appendString("` — ")
      writer.appendString(errors[i].text)
      writer.appendString("\n")
    end for
  end if
  if since != "" then
    writer.appendString("\n**Since:** `")
    writer.appendString(since)
    writer.appendString("`\n")
  end if
  if len(see_items) > 0 then
    see_items = _sortTags(see_items)
    writer.appendString("\n**See also**\n\n")
    for i = 0 to len(see_items) - 1
      writer.appendString("- `")
      writer.appendString(see_items[i].key)
      writer.appendString("`")
      if see_items[i].text != "" then writer.appendString(" — " + see_items[i].text) end if
      writer.appendString("\n")
    end for
  end if
  if len(examples) > 0 then
    writer.appendString("\n**Examples**\n\n")
    for i = 0 to len(examples) - 1
      writer.appendString(examples[i])
      writer.appendString("\n\n")
    end for
  end if
end function

/// Performs the '_sortTags' step in MiniDoc's Markdown renderer.
/// @internal
function _sortTags(tags)
  result = tags
  index = 1
  while index < len(result)
    value = result[index]
    before = index - 1
    value_key = value.key + "\n" + value.text
    while before >= 0 and util.alphabeticalLess(value_key, result[before].key + "\n" + result[before].text)
      result[before + 1] = result[before]
      before = before - 1
    end while
    result[before + 1] = value
    index = index + 1
  end while
  return result
end function

/// Performs the '_appendSymbol' step in MiniDoc's Markdown renderer.
/// @internal
function _appendSymbol(writer, project, doc_symbol, heading_level)
  if _visible(project, doc_symbol) == false then return end if
  writer.appendString("<a id=\"")
  writer.appendString(doc_symbol.id)
  writer.appendString("\"></a>\n")
  writer.appendString(strings.repeat("#", heading_level))
  writer.appendString(" ")
  writer.appendString(doc_symbol.name)
  writer.appendString("\n\n")
  writer.appendString("```ml\n")
  writer.appendString(doc_symbol.signature)
  writer.appendString("\n```\n\n")
  if doc_symbol.summary != "" then writer.appendString(doc_symbol.summary + "\n\n") end if
  if doc_symbol.details != "" then writer.appendString(doc_symbol.details + "\n\n") end if
  if len(doc_symbol.parameters) > 0 then
    writer.appendString("| Parameter | Type | Default | Description |\n")
    writer.appendString("| --- | --- | --- | --- |\n")
    for i = 0 to len(doc_symbol.parameters) - 1
      parameter = doc_symbol.parameters[i]
      name = parameter.name
      if parameter.variadic then name = name + "..." end if
      type_name = parameter.type_name
      if type_name == "" then type_name = "dynamic" end if
      writer.appendString("| `" + util.markdownTableEscape(name) + "` | `" + util.markdownTableEscape(type_name) + "` | ")
      if parameter.default_value == "" then writer.appendString("—") else writer.appendString("`" + util.markdownTableEscape(parameter.default_value) + "`") end if
      writer.appendString(" | " + util.markdownTableEscape(parameter.description) + " |\n")
    end for
    writer.appendString("\n")
  end if
  _appendTagSections(writer, doc_symbol)
  if doc_symbol.source_url != "" then
    writer.appendString("\n[View source]")
    writer.appendString("(" + doc_symbol.source_url + ")")
  else
    writer.appendString("\nSource: `" + doc_symbol.file_path + ":" + doc_symbol.line + "`")
  end if
  writer.appendString("\n\n")
end function

/// Performs the '_packages' step in MiniDoc's Markdown renderer.
/// @internal
function _packages(project)
  result = []
  if len(project.files) == 0 then return result end if
  for i = 0 to len(project.files) - 1
    name = project.files[i].package_name
    if name == "" then name = "(global)" end if
    result = util.addUnique(result, name)
  end for
  return util.sortedStrings(result)
end function

/// Performs the '_projectDescription' step in MiniDoc's Markdown renderer.
/// @internal
function _projectDescription(project)
  if project.config.project_description != "" then return project.config.project_description end if
  return project.config.project_name + " is documented directly from its MiniLang source code."
end function

/// Performs the '_renderHome' step in MiniDoc's Markdown renderer.
/// @internal
function _renderHome(project)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("# " + project.config.project_name + " API\n\n")
  writer.appendString(_projectDescription(project) + "\n\n")
  writer.appendString("Use this reference to explore packages, source files, declarations, code quality metrics, and static dependencies.\n\n")
  writer.appendString("Generated by MiniDoc " + project.generator_version + " on " + project.generated_at + " (local time) from MiniLang source.\n\n")
  if project.complete == false then writer.appendString("> **Incomplete documentation.** One or more reachable source files could not be parsed or resolved.\n\n") end if
  visible_count = 0
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if _visible(project, project.symbols[i]) then visible_count = visible_count + 1 end if
    end for
  end if
  metrics = project.metrics
  writer.appendString("## Project at a glance\n\n| Metric | Value |\n| --- | ---: |\n")
  writer.appendString("| Average complexity | " + metrics.average_cyclomatic_complexity + " |\n")
  writer.appendString("| Documentation coverage | " + metrics.documentation_coverage + "% |\n")
  writer.appendString("| Duplicated source | " + metrics.duplication_percent + "% |\n")
  writer.appendString("| Functions | " + metrics.function_count + " |\n")
  writer.appendString("| Packages | " + len(_packages(project)) + " |\n")
  writer.appendString("| Project files | " + metrics.file_count + " |\n")
  writer.appendString("| Source lines | " + metrics.source_lines + " |\n")
  writer.appendString("| Symbols | " + visible_count + " |\n")
  writer.appendString("| Target | `" + project.config.target + "` |\n\n")
  writer.appendString("## Browse\n\n- [All symbols](Symbols.md)\n")
  if project.config.graph_calls then writer.appendString("- [Call graph](Graph-Calls.md)\n") end if
  writer.appendString("- [Diagnostics](Diagnostics.md)\n- [Files](Files.md)\n")
  if project.config.graph_imports then writer.appendString("- [Import graph](Graph-Imports.md)\n") end if
  writer.appendString("- [Metrics](Metrics.md)\n- [Packages](Packages.md)\n")
  if project.config.graph_types then writer.appendString("- [Type graph](Graph-Types.md)\n") end if
  writer.appendString("\n## Packages\n\n")
  packages = _packages(project)
  if len(packages) > 0 then
    for i = 0 to len(packages) - 1
      writer.appendString("- [" + packages[i] + "](" + _packagePage(packages[i]) + ")\n")
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderFiles' step in MiniDoc's Markdown renderer.
/// @internal
function _renderFiles(project)
  writer = builders.StringBuilder.withCapacity(2048)
  writer.appendString("# Files\n\n[Home](" + _homeName(project) + ")\n\n")
  writer.appendString("| File | Package | Reachable | Symbols |\n| --- | --- | --- | ---: |\n")
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      package_name = file.package_name
      if package_name == "" then package_name = "(global)" end if
      reachable = "no"
      if file.reachable then reachable = "yes" end if
      writer.appendString("| [" + util.markdownTableEscape(file.relative_path) + "](" + _filePage(file) + ") | `" + util.markdownTableEscape(package_name) + "` | " + reachable + " | " + len(file.symbol_ids) + " |\n")
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderSymbols' step in MiniDoc's Markdown renderer.
/// @internal
function _renderSymbols(project)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("# All symbols\n\n[Home](" + _homeName(project) + ")\n\n")
  writer.appendString("| Symbol | Kind | Signature |\n| --- | --- | --- |\n")
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if _visible(project, listed_sym) == false then continue end if
      writer.appendString("| [" + util.markdownTableEscape(listed_sym.qualified_name) + "](" + _symbolLink(project, listed_sym) + ") | `" + listed_sym.kind + "` | `" + util.markdownTableEscape(listed_sym.signature) + "` |\n")
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderPackagesIndex' step in MiniDoc's Markdown renderer.
/// @internal
function _renderPackagesIndex(project)
  writer = builders.StringBuilder.withCapacity(2048)
  writer.appendString("# Packages\n\n[Home](" + _homeName(project) + ")\n\n")
  packages = _packages(project)
  if len(packages) > 0 then
    for i = 0 to len(packages) - 1
      writer.appendString("- [" + packages[i] + "](" + _packagePage(packages[i]) + ")\n")
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderPackage' step in MiniDoc's Markdown renderer.
/// @internal
function _renderPackage(project, package_name)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("# Package `" + package_name + "`\n\n[Home](" + _homeName(project) + ") · [Packages](Packages.md)\n\n")
  writer.appendString("## Files\n\n")
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      actual = file.package_name
      if actual == "" then actual = "(global)" end if
      if actual == package_name then writer.appendString("- [" + file.relative_path + "](" + _filePage(file) + ")\n") end if
    end for
  end if
  writer.appendString("\n## Symbols\n\n")
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      actual2 = listed_sym.package_name
      if actual2 == "" then actual2 = "(global)" end if
      if actual2 == package_name and _visible(project, listed_sym) and listed_sym.container_id == "" then
        writer.appendString("- [`" + listed_sym.qualified_name + "`](" + _symbolLink(project, listed_sym) + ") — " + listed_sym.kind + "\n")
      end if
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderFile' step in MiniDoc's Markdown renderer.
/// @internal
function _renderFile(project, file)
  writer = builders.StringBuilder.withCapacity(8192)
  writer.appendString("# `" + file.relative_path + "`\n\n[Home](" + _homeName(project) + ") · [Files](Files.md)\n\n")
  if file.summary != "" then writer.appendString(file.summary + "\n\n") end if
  if file.details != "" then writer.appendString(file.details + "\n\n") end if
  package_name = file.package_name
  if package_name == "" then package_name = "(global)" end if
  writer.appendString("Package: [`" + package_name + "`](" + _packagePage(package_name) + ")\n\n")
  writer.appendString("Reachable from entry: **")
  if file.reachable then writer.appendString("yes") else writer.appendString("no") end if
  writer.appendString("**\n\n")
  if len(file.imports) > 0 then
    writer.appendString("## Imports\n\n")
    for i = 0 to len(file.imports) - 1
      item = file.imports[i]
      writer.appendString("- `" + item.request + "`")
      if item.alias != "" then writer.appendString(" as `" + item.alias + "`") end if
      if item.target_file_id != "" then
        target = _fileById(project, item.target_file_id)
        if typeof(target) == "struct" then writer.appendString(" → [" + target.relative_path + "](" + _filePage(target) + ")") end if
      else writer.appendString(" — unresolved")
      end if
      writer.appendString("\n")
    end for
    writer.appendString("\n")
  end if
  writer.appendString("## Declarations\n\n")
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if listed_sym.file_id != file.id or _visible(project, listed_sym) == false then continue end if
      if _isType(listed_sym) then
        writer.appendString("- [" + listed_sym.qualified_name + "](" + _typePage(listed_sym) + ") — " + listed_sym.kind + "\n")
      else if typeof(_ownerType(project, listed_sym)) != "struct" then
        _appendSymbol(writer, project, listed_sym, 3)
      end if
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderType' step in MiniDoc's Markdown renderer.
/// @internal
function _renderType(project, type_symbol)
  writer = builders.StringBuilder.withCapacity(8192)
  writer.appendString("# `" + type_symbol.qualified_name + "`\n\n[Home](" + _homeName(project) + ") · [Source file](" + _filePage(_fileById(project, type_symbol.file_id)) + ")\n\n")
  _appendSymbol(writer, project, type_symbol, 2)
  children = []
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if project.symbols[i].container_id == type_symbol.id and _visible(project, project.symbols[i]) then children = children + [project.symbols[i]] end if
    end for
  end if
  if len(children) > 0 then
    writer.appendString("## Members\n\n")
    for i = 0 to len(children) - 1
      _appendSymbol(writer, project, children[i], 3)
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderDiagnostics' step in MiniDoc's Markdown renderer.
/// @internal
function _renderDiagnostics(project)
  writer = builders.StringBuilder.withCapacity(2048)
  writer.appendString("# Diagnostics\n\n[Home](" + _homeName(project) + ")\n\n")
  if len(project.diagnostics) == 0 then writer.appendString("No diagnostics.\n") return writer.toString() end if
  writer.appendString("| Severity | Code | Location | Message |\n| --- | --- | --- | --- |\n")
  for i = 0 to len(project.diagnostics) - 1
    item = project.diagnostics[i]
    writer.appendString("| " + item.severity + " | `" + item.code + "` | `" + util.markdownTableEscape(item.file_path) + ":" + item.line + ":" + item.column + "` | " + util.markdownTableEscape(item.message) + " |\n")
  end for
  return writer.toString()
end function

/// Performs the '_indentedCode' step in MiniDoc's Markdown renderer.
/// @internal
function _indentedCode(text)
  lines = strings.split(text, "\n")
  result = []
  if len(lines) > 0 then
    for i = 0 to len(lines) - 1
      result = result + ["    " + lines[i]]
    end for
  end if
  return strings.join(result, "\n")
end function

/// Performs the '_renderMetrics' step in MiniDoc's Markdown renderer.
/// @internal
function _renderMetrics(project)
  metrics = project.metrics
  writer = builders.StringBuilder.withCapacity(32768)
  writer.appendString("# Metrics\n\n[Home](" + _homeName(project) + ")\n\n")
  writer.appendString("Static metrics are calculated from target-specific preprocessed MiniLang files inside the configured source roots. External imported modules, generated documentation, and excluded paths are not measured.\n\n")
  writer.appendString("## Project summary\n\n| Metric | Value |\n| --- | ---: |\n")
  writer.appendString("| Blank lines | " + metrics.blank_lines + " |\n")
  writer.appendString("| Clone groups | " + metrics.clone_group_count + " |\n")
  writer.appendString("| Cognitive complexity | " + metrics.cognitive_complexity + " (maximum per function: " + metrics.maximum_cognitive_complexity + ") |\n")
  writer.appendString("| Comment lines | " + metrics.comment_lines + " |\n")
  writer.appendString("| Cyclomatic complexity | " + metrics.cyclomatic_complexity + " (average: " + metrics.average_cyclomatic_complexity + ", maximum: " + metrics.maximum_cyclomatic_complexity + ") |\n")
  writer.appendString("| Documentation coverage | " + metrics.documentation_coverage + "% (" + metrics.documented_symbols + " of " + metrics.documentable_symbols + " symbols) |\n")
  writer.appendString("| Duplicated lines | " + metrics.duplicated_lines + " (" + metrics.duplication_percent + "%) |\n")
  writer.appendString("| Files | " + metrics.file_count + " |\n")
  writer.appendString("| Functions | " + metrics.function_count + " |\n")
  writer.appendString("| Maintainability index | " + metrics.maintainability_index + " / 100 |\n")
  writer.appendString("| Physical lines | " + metrics.physical_lines + " |\n")
  writer.appendString("| Source lines | " + metrics.source_lines + " |\n")
  writer.appendString("| Statements | " + metrics.statement_count + " |\n\n")

  halstead = metrics.halstead
  writer.appendString("## Halstead metrics\n\n| Distinct operators | Distinct operands | Total operators | Total operands | Vocabulary | Length | Volume | Difficulty | Effort | Estimated defects |\n| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |\n")
  writer.appendString("| " + halstead.distinct_operators + " | " + halstead.distinct_operands + " | " + halstead.total_operators + " | " + halstead.total_operands + " | " + halstead.vocabulary + " | " + halstead.length + " | " + halstead.volume + " | " + halstead.difficulty + " | " + halstead.effort + " | " + halstead.estimated_bugs + " |\n\n")

  writer.appendString("## Files\n\n| File | SLOC | Functions | Cyclomatic total / avg / max | Cognitive total / max | Duplication | Halstead volume | MI |\n| --- | ---: | ---: | --- | --- | --- | ---: | ---: |\n")
  if len(metrics.file_metrics) > 0 then
    for i = 0 to len(metrics.file_metrics) - 1
      item = metrics.file_metrics[i]
      file = _fileById(project, item.file_id)
      file_link = "Files.md"
      if typeof(file) == "struct" then file_link = _filePage(file) end if
      writer.appendString("| [`" + util.markdownTableEscape(item.file_path) + "`](" + file_link + ") | " + item.source_lines + " | " + item.function_count + " | " + item.cyclomatic_complexity + " / " + item.average_cyclomatic_complexity + " / " + item.maximum_cyclomatic_complexity + " | " + item.cognitive_complexity + " / " + item.maximum_cognitive_complexity + " | " + item.duplicated_lines + " (" + item.duplication_percent + "%) | " + item.halstead.volume + " | " + item.maintainability_index + " |\n")
    end for
  end if
  writer.appendString("\n## Functions\n\n| Function | Location | LOC | Statements | Cyclomatic | Cognitive | Max nesting | Halstead volume | MI |\n| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |\n")
  if len(metrics.function_metrics) > 0 then
    for i = 0 to len(metrics.function_metrics) - 1
      item2 = metrics.function_metrics[i]
      doc_symbol = _symbolById(project, item2.symbol_id)
      if typeof(doc_symbol) == "struct" and _visible(project, doc_symbol) == false then continue end if
      symbol_link = "Symbols.md"
      if typeof(doc_symbol) == "struct" then symbol_link = _symbolLink(project, doc_symbol) end if
      writer.appendString("| [`" + util.markdownTableEscape(item2.qualified_name) + "`](" + symbol_link + ") | `" + util.markdownTableEscape(item2.file_path) + ":" + item2.line + "` | " + item2.lines_of_code + " | " + item2.statement_count + " | " + item2.cyclomatic_complexity + " | " + item2.cognitive_complexity + " | " + item2.maximum_nesting + " | " + item2.halstead.volume + " | " + item2.maintainability_index + " |\n")
    end for
  end if

  writer.appendString("\n## Code duplication\n\nA clone group is an exact sequence of " + metrics.duplicate_window_size + " normalized, contiguous code lines found more than once. Comments and formatting whitespace are ignored. Duplicated-line totals count overlapping windows only once.\n\n")
  if metrics.clone_group_count == 0 then writer.appendString("No duplicate windows found.\n")
  else
    writer.appendString("Found " + metrics.clone_group_count + " clone group(s). At most " + len(metrics.clone_groups) + " groups are shown.\n\n")
    if len(metrics.clone_groups) > 0 then
      for i = 0 to len(metrics.clone_groups) - 1
        group = metrics.clone_groups[i]
        writer.appendString("<details>\n<summary>Clone " + (i + 1) + " — " + len(group.occurrences) + " occurrences</summary>\n\n")
        writer.appendString(_indentedCode(group.fingerprint) + "\n\n")
        for oi = 0 to len(group.occurrences) - 1
          occurrence = group.occurrences[oi]
          occurrence_file = _fileById(project, occurrence.file_id)
          occurrence_link = "Files.md"
          if typeof(occurrence_file) == "struct" then occurrence_link = _filePage(occurrence_file) end if
          writer.appendString("- [`" + occurrence.file_path + ":" + occurrence.line + "`](" + occurrence_link + ")\n")
        end for
        writer.appendString("\n</details>\n\n")
      end for
    end if
  end if

  writer.appendString("\n## Definitions\n\n")
  writer.appendString("- **Cognitive complexity:** decision complexity weighted by nesting; logical `and`/`or` operators add one.\n")
  writer.appendString("- **Cyclomatic complexity:** one plus decisions from conditions, loops, switch cases, and logical `and`/`or` operators.\n")
  writer.appendString("- **Documentation coverage:** percentage of non-internal API declarations checked by `MD2201` that have a documentation summary.\n")
  writer.appendString("- **Halstead metrics:** operators and operands are counted from MiniLang lexical tokens. Estimated defects are volume divided by 3,000.\n")
  writer.appendString("- **Maintainability index:** normalized 0–100 index based on Halstead volume, cyclomatic complexity, and source lines. Project MI is source-line weighted across files.\n")
  writer.appendString("- **SLOC:** non-empty lines containing MiniLang tokens after conditional preprocessing; comment-only lines are excluded.\n")
  return writer.toString()
end function

/// Performs the '_homeName' step in MiniDoc's Markdown renderer.
/// @internal
function _homeName(project)
  if project.config.markdown_profile == "wiki" then return "Home.md" end if
  return "README.md"
end function

/// Performs the '_renderSidebar' step in MiniDoc's Markdown renderer.
/// @internal
function _renderSidebar(project)
  writer = builders.StringBuilder.withCapacity(2048)
  writer.appendString("- [Home](Home)\n- [All symbols](Symbols)\n")
  if project.config.graph_calls then writer.appendString("- [Call graph](Graph-Calls)\n") end if
  writer.appendString("- [Diagnostics](Diagnostics)\n- [Files](Files)\n")
  if project.config.graph_imports then writer.appendString("- [Import graph](Graph-Imports)\n") end if
  writer.appendString("- [Metrics](Metrics)\n- [Packages](Packages)\n")
  if project.config.graph_types then writer.appendString("- [Type graph](Graph-Types)\n") end if
  packages = _packages(project)
  if len(packages) > 0 then writer.appendString("- Packages\n") end if
  if len(packages) > 0 then
    for i = 0 to len(packages) - 1
      writer.appendString("  - [" + packages[i] + "](" + strings.replaceAll(_packagePage(packages[i]), ".md", "") + ")\n")
    end for
  end if
  return writer.toString()
end function

/// Performs the '_renderGraphPage' step in MiniDoc's Markdown renderer.
/// @internal
function _renderGraphPage(project, title, image_name, description)
  writer = builders.StringBuilder.withCapacity(512)
  writer.appendString("# " + title + "\n\n[Home](" + _homeName(project) + ")\n\n")
  writer.appendString(description + "\n\n![" + title + "](assets/" + image_name + ")\n")
  return writer.toString()
end function

/// Performs the '_writeGenerated' step in MiniDoc's Markdown renderer.
/// @internal
function _writeGenerated(root, generated, relative_path, content)
  while strings.endsWith(content, "\n\n")
    content = strings.substr(content, 0, len(content) - 1)
  end while
  if strings.endsWith(content, "\n") == false then content = content + "\n" end if
  written = util.writeText(util.joinPath(root, relative_path), content)
  if typeof(written) == "error" then return written end if
  return generated + [relative_path]
end function

/// Writes the complete Markdown documentation tree and removes stale generated files.
/// @param project Fully analyzed and ordered project model.
/// @since 0.1.0
function render(project)
  root = project.config.markdown_out
  created = util.ensureDirectory(root)
  if typeof(created) == "error" then return created end if
  created_assets = util.ensureDirectory(util.joinPath(root, "assets"))
  if typeof(created_assets) == "error" then return created_assets end if
  generated = []

  home = _homeName(project)
  generated = _writeGenerated(root, generated, home, _renderHome(project))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "Files.md", _renderFiles(project))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "Symbols.md", _renderSymbols(project))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "Packages.md", _renderPackagesIndex(project))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "Diagnostics.md", _renderDiagnostics(project))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "Metrics.md", _renderMetrics(project))
  if typeof(generated) == "error" then return generated end if

  packages = _packages(project)
  if len(packages) > 0 then
    for i = 0 to len(packages) - 1
      name = _packagePage(packages[i])
      generated = _writeGenerated(root, generated, name, _renderPackage(project, packages[i]))
      if typeof(generated) == "error" then return generated end if
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      name2 = _filePage(project.files[i])
      generated = _writeGenerated(root, generated, name2, _renderFile(project, project.files[i]))
      if typeof(generated) == "error" then return generated end if
    end for
  end if
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if _isType(listed_sym) and _visible(project, listed_sym) then
        name3 = _typePage(listed_sym)
        generated = _writeGenerated(root, generated, name3, _renderType(project, listed_sym))
        if typeof(generated) == "error" then return generated end if
      end if
    end for
  end if

  if project.config.graph_imports then
    generated = _writeGenerated(root, generated, "assets/graph-imports.svg", graph.renderSvg(project, "imports", "Import graph"))
    if typeof(generated) == "error" then return generated end if
    generated = _writeGenerated(root, generated, "Graph-Imports.md", _renderGraphPage(project, "Import graph", "graph-imports.svg", "Exact resolved imports between MiniLang source files."))
    if typeof(generated) == "error" then return generated end if
  end if
  if project.config.graph_calls then
    generated = _writeGenerated(root, generated, "assets/graph-calls.svg", graph.renderSvg(project, "calls", "Call graph"))
    if typeof(generated) == "error" then return generated end if
    generated = _writeGenerated(root, generated, "Graph-Calls.md", _renderGraphPage(project, "Call graph", "graph-calls.svg", "Conservative static calls. Dashed edges are dynamic or unresolved."))
    if typeof(generated) == "error" then return generated end if
  end if
  if project.config.graph_types then
    generated = _writeGenerated(root, generated, "assets/graph-types.svg", graph.renderSvg(project, "implements", "Type and interface graph"))
    if typeof(generated) == "error" then return generated end if
    generated = _writeGenerated(root, generated, "Graph-Types.md", _renderGraphPage(project, "Type and interface graph", "graph-types.svg", "Exact `implements` relationships between structs and interfaces."))
    if typeof(generated) == "error" then return generated end if
  end if
  if project.config.markdown_profile == "wiki" then
    generated = _writeGenerated(root, generated, "_Sidebar.md", _renderSidebar(project))
    if typeof(generated) == "error" then return generated end if
  end if
  manifest_written = util.writeText(util.joinPath(root, ".minidoc-output"), strings.join(util.sortedStrings(generated), "\n") + "\n")
  if typeof(manifest_written) == "error" then return manifest_written end if
  return true
end function
