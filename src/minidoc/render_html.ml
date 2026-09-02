/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Generates the standalone, searchable HTML documentation site.

package minidoc.render_html

import std.string as strings
import std.string_builder as builders
import minidoc.graph as graph
import minidoc.util as util

/// Returns whether a source file should receive full documentation pages.
/// @internal
function _fileVisible(project, file)
  if project.config.dependency_mode == "full" then return true end if
  return util.isProjectSource(file.path, project.config.entry, project.config.source_roots)
end function

/// Performs the '_visible' step in MiniDoc's HTML renderer.
/// @internal
function _visible(project, doc_symbol)
  if project.config.include_internal == false and doc_symbol.internal then return false end if
  file = _fileById(project, doc_symbol.file_id)
  return typeof(file) == "struct" and _fileVisible(project, file)
end function

/// Performs the '_isType' step in MiniDoc's HTML renderer.
/// @internal
function _isType(doc_symbol)
  return doc_symbol.kind == "struct" or doc_symbol.kind == "extern_struct" or doc_symbol.kind == "interface" or doc_symbol.kind == "enum"
end function

/// Performs the '_symbolById' step in MiniDoc's HTML renderer.
/// @internal
function _symbolById(project, id)
  if len(project.symbols) == 0 then return 0 end if
  for i = 0 to len(project.symbols) - 1
    if project.symbols[i].id == id then return project.symbols[i] end if
  end for
  return 0
end function

/// Performs the '_fileById' step in MiniDoc's HTML renderer.
/// @internal
function _fileById(project, id)
  if len(project.files) == 0 then return 0 end if
  for i = 0 to len(project.files) - 1
    if project.files[i].id == id then return project.files[i] end if
  end for
  return 0
end function

/// Reports whether imported source dependencies are present.
/// @internal
function _hasDependencies(project)
  if len(project.files) == 0 then return false end if
  for i = 0 to len(project.files) - 1
    if util.isProjectSource(project.files[i].path, project.config.entry, project.config.source_roots) == false then return true end if
  end for
  return false
end function

/// Reports whether a configured graph has visible relations.
/// @internal
function _graphEnabled(project, relation_kind, configured)
  if configured == false then return false end if
  return project.config.hide_empty_graphs == false or graph.hasRelations(project, relation_kind)
end function

/// Returns a compact revision label for generated-page metadata.
/// @internal
function _shortRevision(value)
  if len(value) <= 12 then return value end if
  return strings.substr(value, 0, 12)
end function

/// Performs the '_filePage' step in MiniDoc's HTML renderer.
/// @internal
function _filePage(file)
  return "file-" + util.stableSlug(file.relative_path) + ".html"
end function

/// Performs the '_typePage' step in MiniDoc's HTML renderer.
/// @internal
function _typePage(doc_symbol)
  return "type-" + util.stableSlug(doc_symbol.qualified_name) + ".html"
end function

/// Performs the '_packagePage' step in MiniDoc's HTML renderer.
/// @internal
function _packagePage(name)
  return "package-" + util.stableSlug(name) + ".html"
end function

/// Performs the '_ownerType' step in MiniDoc's HTML renderer.
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

/// Performs the '_symbolLink' step in MiniDoc's HTML renderer.
/// @internal
function _symbolLink(project, doc_symbol)
  if _isType(doc_symbol) then return _typePage(doc_symbol) end if
  owner = _ownerType(project, doc_symbol)
  if typeof(owner) == "struct" then return _typePage(owner) + "#" + doc_symbol.id end if
  file = _fileById(project, doc_symbol.file_id)
  if typeof(file) == "struct" then return _filePage(file) + "#" + doc_symbol.id end if
  return "symbols.html#" + doc_symbol.id
end function

/// Performs the '_markdownHtml' step in MiniDoc's HTML renderer.
/// @internal
function _markdownHtml(text)
  if typeof(text) != "string" or strings.trim(text) == "" then return "" end if
  lines = strings.split(text, "\n")
  writer = builders.StringBuilder.withCapacity(len(text) + 256)
  in_code = false
  in_list = false
  for i = 0 to len(lines) - 1
    line = strings.replaceAll(lines[i], "\r", "")
    trimmed = strings.trim(line)
    if strings.startsWith(trimmed, "```") then
      if in_list then writer.appendString("</ul>\n") in_list = false end if
      if in_code then writer.appendString("</code></pre>\n") in_code = false
      else writer.appendString("<pre><code>") in_code = true
      end if
      continue
    end if
    if in_code then
      writer.appendString(util.htmlEscape(line))
      writer.appendString("\n")
      continue
    end if
    if strings.startsWith(trimmed, "- ") then
      if in_list == false then writer.appendString("<ul>\n") in_list = true end if
      writer.appendString("<li>" + util.htmlEscape(strings.substr(trimmed, 2, len(trimmed) - 2)) + "</li>\n")
      continue
    end if
    if in_list then writer.appendString("</ul>\n") in_list = false end if
    if trimmed == "" then continue end if
    if strings.startsWith(trimmed, "### ") then writer.appendString("<h4>" + util.htmlEscape(strings.substr(trimmed, 4, len(trimmed) - 4)) + "</h4>\n")
    else if strings.startsWith(trimmed, "## ") then writer.appendString("<h3>" + util.htmlEscape(strings.substr(trimmed, 3, len(trimmed) - 3)) + "</h3>\n")
    else if strings.startsWith(trimmed, "# ") then writer.appendString("<h2>" + util.htmlEscape(strings.substr(trimmed, 2, len(trimmed) - 2)) + "</h2>\n")
    else writer.appendString("<p>" + util.htmlEscape(trimmed) + "</p>\n")
    end if
  end for
  if in_list then writer.appendString("</ul>\n") end if
  if in_code then writer.appendString("</code></pre>\n") end if
  return writer.toString()
end function

/// Performs the '_tagValue' step in MiniDoc's HTML renderer.
/// @internal
function _tagValue(doc_symbol, name)
  if len(doc_symbol.tags) == 0 then return "" end if
  for i = 0 to len(doc_symbol.tags) - 1
    if doc_symbol.tags[i].name == name then return doc_symbol.tags[i].text end if
  end for
  return ""
end function

/// Performs the '_sortTags' step in MiniDoc's HTML renderer.
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

/// Performs the '_symbolHtml' step in MiniDoc's HTML renderer.
/// @internal
function _symbolHtml(project, doc_symbol, heading)
  if _visible(project, doc_symbol) == false then return "" end if
  writer = builders.StringBuilder.withCapacity(2048)
  writer.appendString("<article class=\"symbol\" id=\"" + doc_symbol.id + "\">")
  writer.appendString("<h" + heading + "><a class=\"permalink\" href=\"#" + doc_symbol.id + "\" aria-label=\"Permalink\">#</a> " + util.htmlEscape(doc_symbol.name) + "</h" + heading + ">")
  if doc_symbol.deprecated then writer.appendString("<div class=\"notice deprecated\"><strong>Deprecated.</strong> " + util.htmlEscape(_tagValue(doc_symbol, "deprecated")) + "</div>") end if
  writer.appendString("<pre class=\"signature\"><code>" + util.htmlEscape(doc_symbol.signature) + "</code></pre>")
  if doc_symbol.summary != "" then writer.appendString("<p class=\"summary\">" + util.htmlEscape(doc_symbol.summary) + "</p>") end if
  if doc_symbol.details != "" then writer.appendString(_markdownHtml(doc_symbol.details)) end if
  if len(doc_symbol.parameters) > 0 then
    writer.appendString("<div class=\"table-wrap\"><table><thead><tr><th>Parameter</th><th>Type</th><th>Default</th><th>Description</th></tr></thead><tbody>")
    for i = 0 to len(doc_symbol.parameters) - 1
      parameter = doc_symbol.parameters[i]
      name = parameter.name
      if parameter.variadic then name = name + "..." end if
      type_name = parameter.type_name
      if type_name == "" then type_name = "dynamic" end if
      default_value = "—"
      if parameter.default_value != "" then default_value = parameter.default_value end if
      writer.appendString("<tr><td><code>" + util.htmlEscape(name) + "</code></td><td><code>" + util.htmlEscape(type_name) + "</code></td><td><code>" + util.htmlEscape(default_value) + "</code></td><td>" + util.htmlEscape(parameter.description) + "</td></tr>")
    end for
    writer.appendString("</tbody></table></div>")
  end if
  returns_text = _tagValue(doc_symbol, "returns")
  if returns_text != "" then writer.appendString("<p><strong>Returns:</strong> " + util.htmlEscape(returns_text) + "</p>") end if
  errors = []
  see_items = []
  examples = []
  since_value = ""
  if len(doc_symbol.tags) > 0 then
    for i = 0 to len(doc_symbol.tags) - 1
      tag = doc_symbol.tags[i]
      if tag.name == "error" then
        errors = errors + [tag]
      else if tag.name == "see" then see_items = see_items + [tag]
      else if tag.name == "example" then examples = examples + [tag.text]
      else if tag.name == "since" and since_value == "" then since_value = tag.key
      end if
    end for
  end if
  if len(errors) > 0 then
    errors = _sortTags(errors)
    writer.appendString("<h" + (heading + 1) + ">Errors</h" + (heading + 1) + "><ul>")
    for i = 0 to len(errors) - 1
      writer.appendString("<li><code>" + util.htmlEscape(errors[i].key) + "</code> — " + util.htmlEscape(errors[i].text) + "</li>")
    end for
    writer.appendString("</ul>")
  end if
  if since_value != "" then writer.appendString("<p><strong>Since:</strong> <code>" + util.htmlEscape(since_value) + "</code></p>") end if
  if len(see_items) > 0 then
    see_items = _sortTags(see_items)
    writer.appendString("<h" + (heading + 1) + ">See also</h" + (heading + 1) + "><ul>")
    for i = 0 to len(see_items) - 1
      writer.appendString("<li><code>" + util.htmlEscape(see_items[i].key) + "</code>")
      if see_items[i].text != "" then writer.appendString(" — " + util.htmlEscape(see_items[i].text)) end if
      writer.appendString("</li>")
    end for
    writer.appendString("</ul>")
  end if
  if len(examples) > 0 then
    writer.appendString("<h" + (heading + 1) + ">Examples</h" + (heading + 1) + ">")
    for i = 0 to len(examples) - 1
      writer.appendString(_markdownHtml(examples[i]))
    end for
  end if
  if doc_symbol.source_url != "" and util.isSafeUrl(doc_symbol.source_url) then writer.appendString("<p class=\"source\"><a href=\"" + util.htmlEscape(doc_symbol.source_url) + "\">View source</a></p>")
  else writer.appendString("<p class=\"source\">Source: <code>" + util.htmlEscape(doc_symbol.file_path) + ":" + doc_symbol.line + "</code></p>")
  end if
  writer.appendString("</article>")
  return writer.toString()
end function

/// Performs the '_layout' step in MiniDoc's HTML renderer.
/// @internal
function _layout(project, title, content)
  writer = builders.StringBuilder.withCapacity(len(content) + 2048)
  writer.appendString("<!doctype html><html lang=\"en\"><head><meta charset=\"utf-8\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">")
  writer.appendString("<meta http-equiv=\"Content-Security-Policy\" content=\"default-src 'self'; img-src 'self' data:; style-src 'self'; script-src 'self'; connect-src 'self'\">")
  writer.appendString("<title>" + util.htmlEscape(title) + " · " + util.htmlEscape(project.config.project_name) + "</title><link rel=\"stylesheet\" href=\"assets/minidoc.css\"></head><body>")
  writer.appendString("<header><a class=\"brand\" href=\"index.html\">" + util.htmlEscape(project.config.project_name) + "</a><nav><a href=\"diagnostics.html\">Diagnostics</a>")
  if project.config.dependency_mode == "summary" and _hasDependencies(project) then writer.appendString("<a href=\"dependencies.html\">Dependencies</a>") end if
  writer.appendString("<a href=\"files.html\">Files</a><a href=\"metrics.html\">Metrics</a><a href=\"packages.html\">Packages</a><a href=\"symbols.html\">Symbols</a></nav><label class=\"search\"><span>Search</span><input id=\"search-input\" type=\"search\" autocomplete=\"off\" placeholder=\"Symbol name\"></label></header>")
  writer.appendString("<div id=\"search-results\" class=\"search-results\" hidden></div><main>" + content + "</main><footer>Generated by <strong>MiniDoc " + util.htmlEscape(project.generator_version) + "</strong>")
  if project.generated_at != "" then writer.appendString(" on <time>" + util.htmlEscape(project.generated_at) + "</time>") end if
  if project.source_revision != "" then writer.appendString(" from source revision <code>" + util.htmlEscape(_shortRevision(project.source_revision)) + "</code>") end if
  writer.appendString(".</footer><script src=\"assets/minidoc.js\" defer></script></body></html>\n")
  return writer.toString()
end function

/// Performs the '_packages' step in MiniDoc's HTML renderer.
/// @internal
function _packages(project)
  result = []
  if len(project.files) == 0 then return result end if
  for i = 0 to len(project.files) - 1
    if _fileVisible(project, project.files[i]) == false then continue end if
    name = project.files[i].package_name
    if name == "" then name = "(global)" end if
    result = util.addUnique(result, name)
  end for
  return util.sortedStrings(result)
end function

/// Performs the '_projectDescription' step in MiniDoc's HTML renderer.
/// @internal
function _projectDescription(project)
  if project.config.project_description != "" then return project.config.project_description end if
  return project.config.project_name + " is documented directly from its MiniLang source code."
end function

/// Performs the '_home' step in MiniDoc's HTML renderer.
/// @internal
function _home(project)
  writer = builders.StringBuilder.withCapacity(8192)
  writer.appendString("<section class=\"hero\"><p class=\"eyebrow\">MiniLang API documentation</p><h1>" + util.htmlEscape(project.config.project_name) + "</h1><p class=\"lede\">" + util.htmlEscape(_projectDescription(project)) + "</p><p class=\"hero-help\">Use this reference to explore packages, source files, declarations, code quality metrics, and static dependencies.</p><div class=\"hero-meta\"><span>Generated from MiniLang source</span>")
  if project.source_revision != "" then writer.appendString("<span>Revision <code>" + util.htmlEscape(_shortRevision(project.source_revision)) + "</code></span>") end if
  writer.appendString("<span>Target <code>" + util.htmlEscape(project.config.target) + "</code></span></div></section>")
  if project.complete == false then writer.appendString("<div class=\"notice error\"><strong>Incomplete documentation.</strong> See diagnostics for source or import failures.</div>") end if
  visible = 0
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      if _visible(project, project.symbols[i]) then visible = visible + 1 end if
    end for
  end if
  metrics = project.metrics
  writer.appendString("<section class=\"home-section\" aria-labelledby=\"overview-title\"><div class=\"section-heading\"><div><p class=\"eyebrow\">Overview</p><h2 id=\"overview-title\">Project at a glance</h2></div><a href=\"metrics.html\">View all metrics</a></div><div class=\"stats\">")
  writer.appendString("<div><strong>" + metrics.average_cyclomatic_complexity + "</strong><span>Average complexity</span></div>")
  writer.appendString("<div><strong>" + metrics.documentation.overall.percent + "%</strong><span>Documentation coverage</span></div>")
  writer.appendString("<div><strong>" + metrics.duplication_percent + "%</strong><span>Duplicated source</span></div>")
  writer.appendString("<div><strong>" + metrics.function_count + "</strong><span>Functions</span></div>")
  writer.appendString("<div><strong>" + len(_packages(project)) + "</strong><span>Packages</span></div>")
  writer.appendString("<div><strong>" + metrics.file_count + "</strong><span>Project files</span></div>")
  writer.appendString("<div><strong>" + metrics.source_lines + "</strong><span>Source lines</span></div>")
  writer.appendString("<div><strong>" + visible + "</strong><span>Symbols</span></div></div></section>")
  writer.appendString("<section class=\"home-section\" aria-labelledby=\"explore-title\"><div class=\"section-heading\"><div><p class=\"eyebrow\">Navigation</p><h2 id=\"explore-title\">Explore the documentation</h2></div></div><p class=\"section-intro\">Choose an overview below, or use the search field above to jump directly to a declaration.</p><div class=\"cards\">")
  if _graphEnabled(project, "calls", project.config.graph_calls) then writer.appendString("<a href=\"graph-calls.html\"><strong>Call graph</strong><span>Static call relationships</span></a>") end if
  writer.appendString("<a href=\"diagnostics.html\"><strong>Diagnostics</strong><span>Review documentation warnings and errors</span></a>")
  if project.config.dependency_mode == "summary" and _hasDependencies(project) then writer.appendString("<a href=\"dependencies.html\"><strong>Dependencies</strong><span>Review imported source dependencies without expanding their APIs</span></a>") end if
  writer.appendString("<a href=\"files.html\"><strong>Files</strong><span>Browse documented MiniLang source files</span></a>")
  if _graphEnabled(project, "imports", project.config.graph_imports) then writer.appendString("<a href=\"graph-imports.html\"><strong>Import graph</strong><span>Exact file dependencies</span></a>") end if
  writer.appendString("<a href=\"metrics.html\"><strong>Metrics</strong><span>Inspect complexity, duplication, and code health</span></a><a href=\"packages.html\"><strong>Packages</strong><span>Browse declarations grouped by package</span></a><a href=\"symbols.html\"><strong>Symbols</strong><span>Find functions, types, constants, and globals</span></a>")
  if _graphEnabled(project, "implements", project.config.graph_types) then writer.appendString("<a href=\"graph-types.html\"><strong>Type graph</strong><span>Interface implementations</span></a>") end if
  writer.appendString("</div></section>")
  return writer.toString()
end function

/// Performs the '_files' step in MiniDoc's HTML renderer.
/// @internal
function _files(project)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("<h1>Files</h1><div class=\"table-wrap\"><table><thead><tr><th>File</th><th>Package</th><th>Reachable</th><th>Symbols</th></tr></thead><tbody>")
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      if _fileVisible(project, file) == false then continue end if
      package_name = file.package_name
      if package_name == "" then package_name = "(global)" end if
      reachable = "No"
      if file.reachable then reachable = "Yes" end if
      writer.appendString("<tr><td><a href=\"" + _filePage(file) + "\"><code>" + util.htmlEscape(file.relative_path) + "</code></a></td><td>" + util.htmlEscape(package_name) + "</td><td>" + reachable + "</td><td>" + len(file.symbol_ids) + "</td></tr>")
    end for
  end if
  writer.appendString("</tbody></table></div>")
  return writer.toString()
end function

/// Performs the '_symbols' step in MiniDoc's HTML renderer.
/// @internal
function _symbols(project)
  writer = builders.StringBuilder.withCapacity(8192)
  writer.appendString("<h1>All symbols</h1><div class=\"table-wrap\"><table><thead><tr><th>Name</th><th>Kind</th><th>Signature</th></tr></thead><tbody>")
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if _visible(project, listed_sym) == false then continue end if
      writer.appendString("<tr><td><a href=\"" + _symbolLink(project, listed_sym) + "\"><code>" + util.htmlEscape(listed_sym.qualified_name) + "</code></a></td><td><span class=\"kind\">" + listed_sym.kind + "</span></td><td><code>" + util.htmlEscape(listed_sym.signature) + "</code></td></tr>")
    end for
  end if
  writer.appendString("</tbody></table></div>")
  return writer.toString()
end function

/// Performs the '_packagesIndex' step in MiniDoc's HTML renderer.
/// @internal
function _packagesIndex(project)
  writer = builders.StringBuilder.withCapacity(2048)
  writer.appendString("<h1>Packages</h1><div class=\"cards\">")
  packages = _packages(project)
  if len(packages) > 0 then
    for i = 0 to len(packages) - 1
      writer.appendString("<a href=\"" + _packagePage(packages[i]) + "\"><strong>" + util.htmlEscape(packages[i]) + "</strong><span>Package overview</span></a>")
    end for
  end if
  writer.appendString("</div>")
  return writer.toString()
end function

/// Performs the '_package' step in MiniDoc's HTML renderer.
/// @internal
function _package(project, package_name)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("<p class=\"breadcrumb\"><a href=\"packages.html\">Packages</a></p><h1>Package <code>" + util.htmlEscape(package_name) + "</code></h1><h2>Files</h2><ul>")
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      if _fileVisible(project, file) == false then continue end if
      actual = file.package_name
      if actual == "" then actual = "(global)" end if
      if actual == package_name then writer.appendString("<li><a href=\"" + _filePage(file) + "\"><code>" + util.htmlEscape(file.relative_path) + "</code></a></li>") end if
    end for
  end if
  writer.appendString("</ul><h2>Top-level symbols</h2><ul>")
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      actual2 = listed_sym.package_name
      if actual2 == "" then actual2 = "(global)" end if
      if actual2 == package_name and listed_sym.container_id == "" and _visible(project, listed_sym) then writer.appendString("<li><a href=\"" + _symbolLink(project, listed_sym) + "\"><code>" + util.htmlEscape(listed_sym.qualified_name) + "</code></a> <span class=\"kind\">" + listed_sym.kind + "</span></li>") end if
    end for
  end if
  writer.appendString("</ul>")
  return writer.toString()
end function

/// Performs the '_file' step in MiniDoc's HTML renderer.
/// @internal
function _file(project, file)
  writer = builders.StringBuilder.withCapacity(8192)
  writer.appendString("<p class=\"breadcrumb\"><a href=\"files.html\">Files</a></p><h1><code>" + util.htmlEscape(file.relative_path) + "</code></h1>")
  if file.summary != "" then writer.appendString("<p class=\"summary\">" + util.htmlEscape(file.summary) + "</p>") end if
  if file.details != "" then writer.appendString(_markdownHtml(file.details)) end if
  package_name = file.package_name
  if package_name == "" then package_name = "(global)" end if
  writer.appendString("<dl class=\"metadata\"><dt>Package</dt><dd><a href=\"" + _packagePage(package_name) + "\"><code>" + util.htmlEscape(package_name) + "</code></a></dd><dt>Reachable</dt><dd>")
  if file.reachable then writer.appendString("Yes") else writer.appendString("No") end if
  writer.appendString("</dd></dl>")
  if len(file.imports) > 0 then
    writer.appendString("<h2>Imports</h2><ul>")
    for i = 0 to len(file.imports) - 1
      item = file.imports[i]
      target = 0
      if item.target_file_id != "" then target = _fileById(project, item.target_file_id) end if
      if typeof(target) == "struct" and _fileVisible(project, target) == false and project.config.dependency_mode == "none" then continue end if
      writer.appendString("<li><code>" + util.htmlEscape(item.request) + "</code>")
      if item.alias != "" then writer.appendString(" as <code>" + util.htmlEscape(item.alias) + "</code>") end if
      if item.target_file_id != "" then
        if typeof(target) == "struct" and _fileVisible(project, target) then writer.appendString(" → <a href=\"" + _filePage(target) + "\">" + util.htmlEscape(target.relative_path) + "</a>")
        else if typeof(target) == "struct" then writer.appendString(" → <code>" + util.htmlEscape(target.relative_path) + "</code> <span class=\"kind\">external dependency</span>")
        end if
      else writer.appendString(" <span class=\"unresolved\">unresolved</span>")
      end if
      writer.appendString("</li>")
    end for
    writer.appendString("</ul>")
  end if
  writer.appendString("<h2>Declarations</h2>")
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if listed_sym.file_id != file.id or _visible(project, listed_sym) == false then continue end if
      if _isType(listed_sym) then writer.appendString("<p><a href=\"" + _typePage(listed_sym) + "\"><code>" + util.htmlEscape(listed_sym.qualified_name) + "</code></a> <span class=\"kind\">" + listed_sym.kind + "</span></p>")
      else if typeof(_ownerType(project, listed_sym)) != "struct" then writer.appendString(_symbolHtml(project, listed_sym, 3))
      end if
    end for
  end if
  return writer.toString()
end function

/// Counts project-owned files importing one dependency file.
/// @internal
function _dependencyReferenceCount(project, dependency_id)
  count = 0
  if len(project.files) == 0 then return count end if
  for i = 0 to len(project.files) - 1
    file = project.files[i]
    if util.isProjectSource(file.path, project.config.entry, project.config.source_roots) == false then continue end if
    if len(file.imports) == 0 then continue end if
    for j = 0 to len(file.imports) - 1
      if file.imports[j].target_file_id == dependency_id then count = count + 1 break end if
    end for
  end for
  return count
end function

/// Renders imported source dependencies without expanding their API pages.
/// @internal
function _dependencies(project)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("<h1>Dependencies</h1><p>These MiniLang source files are reachable through imports but are outside the configured project source roots. Their declarations are excluded from API indexes, search, and project metrics.</p><div class=\"table-wrap\"><table><thead><tr><th>Direct project imports</th><th>Package</th><th>Source file</th></tr></thead><tbody>")
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file = project.files[i]
      if util.isProjectSource(file.path, project.config.entry, project.config.source_roots) then continue end if
      package_name = file.package_name
      if package_name == "" then package_name = "(global)" end if
      writer.appendString("<tr><td>" + _dependencyReferenceCount(project, file.id) + "</td><td><code>" + util.htmlEscape(package_name) + "</code></td><td><code>" + util.htmlEscape(file.relative_path) + "</code></td></tr>")
    end for
  end if
  writer.appendString("</tbody></table></div>")
  return writer.toString()
end function

/// Performs the '_type' step in MiniDoc's HTML renderer.
/// @internal
function _type(project, type_symbol)
  writer = builders.StringBuilder.withCapacity(8192)
  file = _fileById(project, type_symbol.file_id)
  writer.appendString("<p class=\"breadcrumb\"><a href=\"" + _filePage(file) + "\">" + util.htmlEscape(file.relative_path) + "</a></p><h1><code>" + util.htmlEscape(type_symbol.qualified_name) + "</code></h1>")
  writer.appendString(_symbolHtml(project, type_symbol, 2))
  writer.appendString("<h2>Members</h2>")
  has_members = false
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      child = project.symbols[i]
      if child.container_id == type_symbol.id and _visible(project, child) then writer.appendString(_symbolHtml(project, child, 3)) has_members = true end if
    end for
  end if
  if has_members == false then writer.appendString("<p>No members.</p>") end if
  return writer.toString()
end function

/// Performs the '_diagnostics' step in MiniDoc's HTML renderer.
/// @internal
function _diagnostics(project)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("<h1>Diagnostics</h1>")
  if len(project.diagnostics) == 0 then writer.appendString("<p>No diagnostics.</p>") return writer.toString() end if
  writer.appendString("<div class=\"table-wrap\"><table><thead><tr><th>Severity</th><th>Code</th><th>Location</th><th>Message</th></tr></thead><tbody>")
  for i = 0 to len(project.diagnostics) - 1
    item = project.diagnostics[i]
    writer.appendString("<tr><td>" + item.severity + "</td><td><code>" + item.code + "</code></td><td><code>" + util.htmlEscape(item.file_path) + ":" + item.line + ":" + item.column + "</code></td><td>" + util.htmlEscape(item.message) + "</td></tr>")
  end for
  writer.appendString("</tbody></table></div>")
  return writer.toString()
end function

/// Performs the '_metrics' step in MiniDoc's HTML renderer.
/// @internal
function _metrics(project)
  metrics = project.metrics
  writer = builders.StringBuilder.withCapacity(32768)
  writer.appendString("<h1>Metrics</h1><p>Static metrics are calculated from target-specific preprocessed MiniLang files inside the configured source roots. External imported modules, generated documentation, and excluded paths are not measured.</p>")
  writer.appendString("<section class=\"stats\"><div><strong>" + metrics.source_lines + "</strong><span>Source lines</span></div><div><strong>" + metrics.average_cyclomatic_complexity + "</strong><span>Average cyclomatic complexity</span></div><div><strong>" + metrics.duplication_percent + "%</strong><span>Duplicated source lines</span></div><div><strong>" + metrics.maintainability_index + "</strong><span>Maintainability index</span></div></section>")

  writer.appendString("<h2>Project summary</h2><div class=\"table-wrap\"><table><tbody>")
  writer.appendString("<tr><th>Blank lines</th><td>" + metrics.blank_lines + "</td></tr>")
  writer.appendString("<tr><th>Clone groups</th><td>" + metrics.clone_group_count + "</td></tr>")
  writer.appendString("<tr><th>Cognitive complexity</th><td>" + metrics.cognitive_complexity + " (maximum per function: " + metrics.maximum_cognitive_complexity + ")</td></tr>")
  writer.appendString("<tr><th>Comment lines</th><td>" + metrics.comment_lines + "</td></tr>")
  writer.appendString("<tr><th>Cyclomatic complexity</th><td>" + metrics.cyclomatic_complexity + " (average: " + metrics.average_cyclomatic_complexity + ", maximum: " + metrics.maximum_cyclomatic_complexity + ")</td></tr>")
  writer.appendString("<tr><th>Documentation coverage</th><td>" + metrics.documentation.overall.percent + "% (" + metrics.documentation.overall.documented + " of " + metrics.documentation.overall.total + " documentation items)</td></tr>")
  writer.appendString("<tr><th>Duplicated lines</th><td>" + metrics.duplicated_lines + " (" + metrics.duplication_percent + "%)</td></tr>")
  writer.appendString("<tr><th>Files</th><td>" + metrics.file_count + "</td></tr>")
  writer.appendString("<tr><th>Functions</th><td>" + metrics.function_count + "</td></tr>")
  writer.appendString("<tr><th>Maintainability index</th><td>" + metrics.maintainability_index + " / 100</td></tr>")
  writer.appendString("<tr><th>Physical lines</th><td>" + metrics.physical_lines + "</td></tr>")
  writer.appendString("<tr><th>Source lines</th><td>" + metrics.source_lines + "</td></tr>")
  writer.appendString("<tr><th>Statements</th><td>" + metrics.statement_count + "</td></tr></tbody></table></div>")

  coverage = metrics.documentation
  writer.appendString("<h2>Documentation coverage</h2><p>Coverage is split by documentation contract so strong API summaries cannot hide undocumented parameters or data members.</p><div class=\"table-wrap\"><table><thead><tr><th>Category</th><th>Documented</th><th>Total</th><th>Coverage</th></tr></thead><tbody>")
  writer.appendString("<tr><td>API declarations</td><td>" + coverage.api.documented + "</td><td>" + coverage.api.total + "</td><td>" + coverage.api.percent + "%</td></tr>")
  writer.appendString("<tr><td>Constants</td><td>" + coverage.constants.documented + "</td><td>" + coverage.constants.total + "</td><td>" + coverage.constants.percent + "%</td></tr>")
  writer.appendString("<tr><td>Enum variants</td><td>" + coverage.enum_variants.documented + "</td><td>" + coverage.enum_variants.total + "</td><td>" + coverage.enum_variants.percent + "%</td></tr>")
  writer.appendString("<tr><td>Fields</td><td>" + coverage.fields.documented + "</td><td>" + coverage.fields.total + "</td><td>" + coverage.fields.percent + "%</td></tr>")
  writer.appendString("<tr><td>Globals</td><td>" + coverage.globals.documented + "</td><td>" + coverage.globals.total + "</td><td>" + coverage.globals.percent + "%</td></tr>")
  writer.appendString("<tr><td>Overall</td><td>" + coverage.overall.documented + "</td><td>" + coverage.overall.total + "</td><td>" + coverage.overall.percent + "%</td></tr>")
  writer.appendString("<tr><td>Parameters</td><td>" + coverage.parameters.documented + "</td><td>" + coverage.parameters.total + "</td><td>" + coverage.parameters.percent + "%</td></tr></tbody></table></div>")

  halstead = metrics.halstead
  writer.appendString("<h2>Halstead metrics</h2><div class=\"table-wrap\"><table><thead><tr><th>Distinct operators</th><th>Distinct operands</th><th>Total operators</th><th>Total operands</th><th>Vocabulary</th><th>Length</th><th>Volume</th><th>Difficulty</th><th>Effort</th><th>Estimated defects</th></tr></thead><tbody><tr>")
  writer.appendString("<td>" + halstead.distinct_operators + "</td><td>" + halstead.distinct_operands + "</td><td>" + halstead.total_operators + "</td><td>" + halstead.total_operands + "</td><td>" + halstead.vocabulary + "</td><td>" + halstead.length + "</td><td>" + halstead.volume + "</td><td>" + halstead.difficulty + "</td><td>" + halstead.effort + "</td><td>" + halstead.estimated_bugs + "</td></tr></tbody></table></div>")

  writer.appendString("<h2>Files</h2><div class=\"table-wrap\"><table><thead><tr><th>File</th><th>SLOC</th><th>Functions</th><th>Cyclomatic total / avg / max</th><th>Cognitive total / max</th><th>Duplication</th><th>Halstead volume</th><th>MI</th></tr></thead><tbody>")
  if len(metrics.file_metrics) > 0 then
    for i = 0 to len(metrics.file_metrics) - 1
      item = metrics.file_metrics[i]
      file = _fileById(project, item.file_id)
      file_link = "files.html"
      if typeof(file) == "struct" then file_link = _filePage(file) end if
      writer.appendString("<tr><td><a href=\"" + file_link + "\"><code>" + util.htmlEscape(item.file_path) + "</code></a></td><td>" + item.source_lines + "</td><td>" + item.function_count + "</td><td>" + item.cyclomatic_complexity + " / " + item.average_cyclomatic_complexity + " / " + item.maximum_cyclomatic_complexity + "</td><td>" + item.cognitive_complexity + " / " + item.maximum_cognitive_complexity + "</td><td>" + item.duplicated_lines + " (" + item.duplication_percent + "%)</td><td>" + item.halstead.volume + "</td><td>" + item.maintainability_index + "</td></tr>")
    end for
  end if
  writer.appendString("</tbody></table></div>")

  writer.appendString("<h2>Functions</h2><div class=\"table-wrap\"><table><thead><tr><th>Function</th><th>LOC</th><th>Statements</th><th>Cyclomatic</th><th>Cognitive</th><th>Max nesting</th><th>Halstead volume</th><th>MI</th></tr></thead><tbody>")
  if len(metrics.function_metrics) > 0 then
    for i = 0 to len(metrics.function_metrics) - 1
      item2 = metrics.function_metrics[i]
      doc_symbol = _symbolById(project, item2.symbol_id)
      if typeof(doc_symbol) == "struct" and _visible(project, doc_symbol) == false then continue end if
      symbol_link = "symbols.html"
      if typeof(doc_symbol) == "struct" then symbol_link = _symbolLink(project, doc_symbol) end if
      writer.appendString("<tr><td><a href=\"" + symbol_link + "\"><code>" + util.htmlEscape(item2.qualified_name) + "</code></a><small class=\"metric-location\">" + util.htmlEscape(item2.file_path) + ":" + item2.line + "</small></td><td>" + item2.lines_of_code + "</td><td>" + item2.statement_count + "</td><td>" + item2.cyclomatic_complexity + "</td><td>" + item2.cognitive_complexity + "</td><td>" + item2.maximum_nesting + "</td><td>" + item2.halstead.volume + "</td><td>" + item2.maintainability_index + "</td></tr>")
    end for
  end if
  writer.appendString("</tbody></table></div>")

  writer.appendString("<h2>Code duplication</h2><p>A clone group is an exact sequence of " + metrics.duplicate_window_size + " normalized, contiguous code lines found more than once. Comments and formatting whitespace are ignored. Duplicated-line totals count overlapping windows only once.</p>")
  if metrics.clone_group_count == 0 then writer.appendString("<p>No duplicate windows found.</p>")
  else
    writer.appendString("<p>" + metrics.clone_group_count + " clone group(s) found. At most " + len(metrics.clone_groups) + " groups are shown.</p>")
    if len(metrics.clone_groups) > 0 then
      for i = 0 to len(metrics.clone_groups) - 1
        group = metrics.clone_groups[i]
        writer.appendString("<details class=\"clone\"><summary>Clone " + (i + 1) + " — " + len(group.occurrences) + " occurrences</summary><pre><code>" + util.htmlEscape(group.fingerprint) + "</code></pre><ul>")
        for oi = 0 to len(group.occurrences) - 1
          occurrence = group.occurrences[oi]
          occurrence_file = _fileById(project, occurrence.file_id)
          occurrence_link = "files.html"
          if typeof(occurrence_file) == "struct" then occurrence_link = _filePage(occurrence_file) end if
          writer.appendString("<li><a href=\"" + occurrence_link + "\"><code>" + util.htmlEscape(occurrence.file_path) + ":" + occurrence.line + "</code></a></li>")
        end for
        writer.appendString("</ul></details>")
      end for
    end if
  end if

  writer.appendString("<h2>Definitions</h2><dl class=\"metric-definitions\"><dt>Cognitive complexity</dt><dd>Decision complexity weighted by nesting; logical and/or operators add one.</dd><dt>Cyclomatic complexity</dt><dd>One plus decisions from conditions, loops, switch cases, and logical and/or operators.</dd><dt>Documentation coverage</dt><dd>Percentage of documented API summaries, parameter contracts, fields, constants, globals, and enum variants. Empty categories report 100% and do not affect the overall ratio.</dd><dt>Halstead metrics</dt><dd>Operators and operands are counted from MiniLang lexical tokens. Estimated defects are volume divided by 3,000.</dd><dt>Maintainability index</dt><dd>The normalized 0–100 index based on Halstead volume, cyclomatic complexity, and source lines. Project MI is source-line weighted across files.</dd><dt>SLOC</dt><dd>Non-empty lines containing MiniLang tokens after conditional preprocessing; comment-only lines are excluded.</dd></dl>")
  return writer.toString()
end function

/// Performs the '_graphPage' step in MiniDoc's HTML renderer.
/// @internal
function _graphPage(project, title, filename, description)
  detail = description
  if project.config.graph_granularity == "package" then detail = detail + " Repeated relationships are aggregated by package." end if
  return "<h1>" + util.htmlEscape(title) + "</h1><p>" + util.htmlEscape(detail) + "</p><div class=\"graph\"><img src=\"assets/" + filename + "\" alt=\"" + util.htmlEscape(title) + "\"></div>"
end function

/// Performs the '_searchIndex' step in MiniDoc's HTML renderer.
/// @internal
function _searchIndex(project)
  writer = builders.StringBuilder.withCapacity(4096)
  writer.appendString("[")
  first = true
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if _visible(project, listed_sym) == false then continue end if
      if first == false then writer.appendString(",") end if
      first = false
      writer.appendString("{\"name\":\"" + util.jsonEscape(listed_sym.name) + "\",\"qualified\":\"" + util.jsonEscape(listed_sym.qualified_name) + "\",\"kind\":\"" + util.jsonEscape(listed_sym.kind) + "\",\"summary\":\"" + util.jsonEscape(listed_sym.summary) + "\",\"url\":\"" + util.jsonEscape(_symbolLink(project, listed_sym)) + "\"}")
    end for
  end if
  writer.appendString("]\n")
  return writer.toString()
end function

/// Performs the '_css' step in MiniDoc's HTML renderer.
/// @internal
function _css()
  return ":root{color-scheme:light dark;--bg:#f8fafc;--panel:#fff;--text:#0f172a;--muted:#64748b;--line:#cbd5e1;--accent:#2563eb;--code:#eef2ff}*{box-sizing:border-box}body{min-height:100vh;margin:0;display:flex;flex-direction:column;background:var(--bg);color:var(--text);font:15px/1.6 system-ui,sans-serif}header{position:sticky;top:0;z-index:3;display:flex;gap:24px;align-items:center;padding:12px max(20px,calc((100% - 1180px)/2));background:var(--panel);border-bottom:1px solid var(--line)}.brand{font-weight:800;color:var(--text);text-decoration:none}nav{display:flex;gap:16px}a{color:var(--accent)}nav a{text-decoration:none}.search{margin-left:auto;display:flex;gap:8px;align-items:center}.search span{font-size:12px;color:var(--muted)}input{padding:7px 10px;border:1px solid var(--line);border-radius:7px;background:var(--bg);color:var(--text)}main{width:100%;max-width:1180px;flex:1;margin:0 auto;padding:38px 20px 80px}.hero{max-width:900px;padding:38px 0 24px}.hero h1{font-size:46px;line-height:1.15;margin:4px 0 18px}.lede{max-width:850px;margin:0;font-size:19px;line-height:1.65}.hero-help,.section-intro{max-width:780px;color:var(--muted)}.hero-help{margin:10px 0 0}.hero-meta{display:flex;flex-wrap:wrap;gap:8px;margin-top:22px}.hero-meta span{padding:5px 10px;border:1px solid var(--line);border-radius:999px;background:var(--panel);color:var(--muted);font-size:13px}.hero-meta code{color:var(--text)}.eyebrow,.source,.breadcrumb{color:var(--muted)}.eyebrow{margin:0;font-size:12px;font-weight:700;letter-spacing:.08em;text-transform:uppercase}.home-section{margin-top:48px}.section-heading{display:flex;align-items:end;justify-content:space-between;gap:20px}.section-heading h2{margin:2px 0 0;font-size:28px;line-height:1.25}.section-heading>a{white-space:nowrap}.section-intro{margin:8px 0 0}.stats{display:grid;grid-template-columns:repeat(auto-fit,minmax(min(220px,100%),1fr));gap:14px;margin:22px 0 0}.cards{display:grid;grid-template-columns:repeat(auto-fit,minmax(min(260px,100%),1fr));gap:14px;margin:22px 0 0}.stats div,.cards a,.symbol{background:var(--panel);border:1px solid var(--line);border-radius:10px;padding:18px}.stats div{min-width:0;border-top:3px solid var(--accent)}.stats strong,.stats span,.cards strong,.cards span{display:block}.stats strong{font-size:25px;line-height:1.25;overflow-wrap:anywhere}.stats span{margin-top:5px;color:var(--muted)}.cards a{display:flex;min-width:0;min-height:112px;overflow:hidden;flex-direction:column;text-decoration:none;transition:border-color .15s ease,box-shadow .15s ease,transform .15s ease}.cards a:hover,.cards a:focus-visible{border-color:var(--accent);box-shadow:0 10px 24px #0f172a14;transform:translateY(-2px)}.cards strong{font-size:17px;line-height:1.35;overflow-wrap:anywhere;word-break:break-word}.cards span{margin-top:auto;padding-top:10px;color:var(--muted)}pre,code{font-family:ui-monospace,SFMono-Regular,Consolas,monospace}.signature{padding:14px;background:var(--code);border-radius:8px;overflow:auto}.symbol{margin:18px 0}.symbol h2,.symbol h3,.symbol h4{margin-top:0}.permalink{text-decoration:none;color:var(--muted)}.table-wrap{overflow:auto}table{width:100%;border-collapse:collapse;background:var(--panel)}th,td{text-align:left;padding:10px 12px;border-bottom:1px solid var(--line);vertical-align:top}.kind{display:inline-block;padding:1px 7px;border-radius:99px;background:var(--code);font-size:12px}.notice{padding:14px;border-radius:8px;background:#fff7ed;border:1px solid #fdba74}.notice.error,.unresolved{color:#b91c1c}.deprecated{color:#9a3412}.metadata,.metric-definitions{display:grid;grid-template-columns:max-content 1fr;gap:4px 12px}.metadata dt,.metric-definitions dt{font-weight:700}.metric-location{display:block;color:var(--muted)}.clone{margin:12px 0;padding:10px 14px;background:var(--panel);border:1px solid var(--line);border-radius:8px}.clone summary{cursor:pointer;font-weight:700}.clone pre{overflow:auto;background:var(--code);padding:12px;border-radius:6px}.graph{overflow:auto;background:#fff;border:1px solid var(--line);border-radius:10px;padding:8px}.graph img{max-width:none}.search-results{position:fixed;right:20px;top:66px;z-index:5;width:min(520px,calc(100% - 40px));max-height:70vh;overflow:auto;background:var(--panel);border:1px solid var(--line);border-radius:10px;box-shadow:0 18px 50px #0004;padding:8px}.search-results a{display:block;padding:9px;text-decoration:none}.search-results small{display:block;color:var(--muted)}footer{padding:24px;text-align:center;color:var(--muted);border-top:1px solid var(--line)}footer strong{color:var(--text)}@media(max-width:720px){header{flex-wrap:wrap}nav{order:3;width:100%;overflow:auto}.search{margin-left:0}.hero{padding-top:24px}.hero h1{font-size:34px}.lede{font-size:17px}.section-heading{align-items:start;flex-direction:column;gap:8px}.cards{grid-template-columns:1fr}.metric-definitions{grid-template-columns:1fr}}@media(prefers-color-scheme:dark){:root{--bg:#0f172a;--panel:#111c30;--text:#e2e8f0;--muted:#94a3b8;--line:#334155;--accent:#60a5fa;--code:#1e293b}.notice{background:#422006;border-color:#9a3412}.notice.error,.unresolved{color:#fca5a5}}"
end function

/// Performs the '_javascript' step in MiniDoc's HTML renderer.
/// @internal
function _javascript()
  return "'use strict';const input=document.getElementById('search-input');const box=document.getElementById('search-results');let index=[];fetch('search-index.json').then(r=>r.json()).then(v=>index=v).catch(()=>{});function hide(){box.hidden=true;box.innerHTML=''}function search(){const q=input.value.trim().toLowerCase();if(!q){hide();return}const hits=index.filter(x=>(x.qualified+' '+x.kind+' '+x.summary).toLowerCase().includes(q)).slice(0,30);box.innerHTML='';for(const hit of hits){const a=document.createElement('a');a.href=hit.url;const strong=document.createElement('strong');strong.textContent=hit.qualified;const small=document.createElement('small');small.textContent=hit.kind+(hit.summary?' — '+hit.summary:'');a.append(strong,small);box.append(a)}box.hidden=false}if(input){input.addEventListener('input',search);input.addEventListener('keydown',e=>{if(e.key==='Escape'){input.value='';hide()}})}document.addEventListener('click',e=>{if(box&&!box.contains(e.target)&&e.target!==input)hide()});"
end function

/// Performs the '_writeGenerated' step in MiniDoc's HTML renderer.
/// @internal
function _writeGenerated(root, generated, relative_path, content)
  written = util.writeText(util.joinPath(root, relative_path), content)
  if typeof(written) == "error" then return written end if
  return generated + [relative_path]
end function

/// Writes the complete HTML documentation tree and removes stale generated files.
/// @param project Fully analyzed and ordered project model.
/// @since 0.1.0
function render(project)
  root = project.config.html_out
  created = util.ensureDirectory(root)
  if typeof(created) == "error" then return created end if
  created_assets = util.ensureDirectory(util.joinPath(root, "assets"))
  if typeof(created_assets) == "error" then return created_assets end if
  generated = []
  generated = _writeGenerated(root, generated, "index.html", _layout(project, "Home", _home(project)))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "files.html", _layout(project, "Files", _files(project)))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "symbols.html", _layout(project, "Symbols", _symbols(project)))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "packages.html", _layout(project, "Packages", _packagesIndex(project)))
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "diagnostics.html", _layout(project, "Diagnostics", _diagnostics(project)))
  if typeof(generated) == "error" then return generated end if
  if project.config.dependency_mode == "summary" and _hasDependencies(project) then
    generated = _writeGenerated(root, generated, "dependencies.html", _layout(project, "Dependencies", _dependencies(project)))
    if typeof(generated) == "error" then return generated end if
  end if
  generated = _writeGenerated(root, generated, "metrics.html", _layout(project, "Metrics", _metrics(project)))
  if typeof(generated) == "error" then return generated end if
  packages = _packages(project)
  if len(packages) > 0 then
    for i = 0 to len(packages) - 1
      filename = _packagePage(packages[i])
      generated = _writeGenerated(root, generated, filename, _layout(project, "Package " + packages[i], _package(project, packages[i])))
      if typeof(generated) == "error" then return generated end if
    end for
  end if
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      if _fileVisible(project, project.files[i]) == false then continue end if
      filename2 = _filePage(project.files[i])
      generated = _writeGenerated(root, generated, filename2, _layout(project, project.files[i].relative_path, _file(project, project.files[i])))
      if typeof(generated) == "error" then return generated end if
    end for
  end if
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      listed_sym = project.symbols[i]
      if _isType(listed_sym) and _visible(project, listed_sym) then
        filename3 = _typePage(listed_sym)
        generated = _writeGenerated(root, generated, filename3, _layout(project, listed_sym.qualified_name, _type(project, listed_sym)))
        if typeof(generated) == "error" then return generated end if
      end if
    end for
  end if
  if _graphEnabled(project, "imports", project.config.graph_imports) then
    generated = _writeGenerated(root, generated, "assets/graph-imports.svg", graph.renderSvg(project, "imports", "Import graph"))
    if typeof(generated) == "error" then return generated end if
    generated = _writeGenerated(root, generated, "graph-imports.html", _layout(project, "Import graph", _graphPage(project, "Import graph", "graph-imports.svg", "Exact resolved imports between source files.")))
    if typeof(generated) == "error" then return generated end if
  end if
  if _graphEnabled(project, "calls", project.config.graph_calls) then
    generated = _writeGenerated(root, generated, "assets/graph-calls.svg", graph.renderSvg(project, "calls", "Call graph"))
    if typeof(generated) == "error" then return generated end if
    generated = _writeGenerated(root, generated, "graph-calls.html", _layout(project, "Call graph", _graphPage(project, "Call graph", "graph-calls.svg", "Conservative static call relationships; dashed edges are not exact.")))
    if typeof(generated) == "error" then return generated end if
  end if
  if _graphEnabled(project, "implements", project.config.graph_types) then
    generated = _writeGenerated(root, generated, "assets/graph-types.svg", graph.renderSvg(project, "implements", "Type and interface graph"))
    if typeof(generated) == "error" then return generated end if
    generated = _writeGenerated(root, generated, "graph-types.html", _layout(project, "Type graph", _graphPage(project, "Type and interface graph", "graph-types.svg", "Exact implements relationships.")))
    if typeof(generated) == "error" then return generated end if
  end if
  generated = _writeGenerated(root, generated, "assets/minidoc.css", _css())
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "assets/minidoc.js", _javascript())
  if typeof(generated) == "error" then return generated end if
  generated = _writeGenerated(root, generated, "search-index.json", _searchIndex(project))
  if typeof(generated) == "error" then return generated end if
  cleaned = util.removeStaleGenerated(root, generated)
  if typeof(cleaned) == "error" then return cleaned end if
  manifest_written = util.writeText(util.joinPath(root, ".minidoc-output"), strings.join(util.sortedStrings(generated), "\n") + "\n")
  if typeof(manifest_written) == "error" then return manifest_written end if
  return true
end function
