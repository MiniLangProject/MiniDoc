/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

import std.fs as fs
import std.string as strings
import minidoc.analyzer as analyzer
import minidoc.app as app
import minidoc.config as configuration
import minidoc.doc_comments as comments
import minidoc.metrics as metrics
import minidoc.util as util

_failures = 0

function expect(condition, name, detail)
  global _failures
  if condition then
    print "[PASS] " + name
    return true
  end if
  _failures = _failures + 1
  print "[FAIL] " + name + " (" + detail + ")"
  return false
end function

function findSymbol(project, qualified_name)
  for i = 0 to len(project.symbols) - 1
    if project.symbols[i].qualified_name == qualified_name then return project.symbols[i] end if
  end for
  return 0
end function

function hasRelation(project, kind, from_name, to_name)
  source_id = ""
  target_id = ""
  for i = 0 to len(project.symbols) - 1
    if project.symbols[i].qualified_name == from_name then source_id = project.symbols[i].id end if
    if project.symbols[i].qualified_name == to_name then target_id = project.symbols[i].id end if
  end for
  if source_id == "" or target_id == "" then return false end if
  for i = 0 to len(project.relations) - 1
    relation = project.relations[i]
    if relation.kind == kind and relation.from_id == source_id and relation.to_id == target_id then return true end if
  end for
  return false
end function

function hasUnreachableFile(project, relative_path)
  for i = 0 to len(project.files) - 1
    if project.files[i].relative_path == relative_path and project.files[i].reachable == false then return true end if
  end for
  return false
end function

function hasDiagnostic(project, code)
  if len(project.diagnostics) == 0 then return false end if
  for i = 0 to len(project.diagnostics) - 1
    if project.diagnostics[i].code == code then return true end if
  end for
  return false
end function

function countDiagnostics(project, code)
  count = 0
  if len(project.diagnostics) == 0 then return count end if
  for i = 0 to len(project.diagnostics) - 1
    if project.diagnostics[i].code == code then count = count + 1 end if
  end for
  return count
end function

function readRequired(path)
  result = fs.readAllText(path)
  if typeof(result) == "error" then return "" end if
  return result
end function

function findFunctionMetric(project, qualified_name)
  if len(project.metrics.function_metrics) == 0 then return 0 end if
  for i = 0 to len(project.metrics.function_metrics) - 1
    if project.metrics.function_metrics[i].qualified_name == qualified_name then return project.metrics.function_metrics[i] end if
  end for
  return 0
end function

function stringsAreAlphabetical(values)
  if len(values) < 2 then return true end if
  for i = 1 to len(values) - 1
    if util.alphabeticalLess(values[i], values[i - 1]) then return false end if
  end for
  return true
end function

function projectOrderIsAlphabetical(project)
  file_names = []
  symbol_names = []
  if len(project.files) > 0 then
    for i = 0 to len(project.files) - 1
      file_names = file_names + [project.files[i].relative_path]
    end for
  end if
  if len(project.symbols) > 0 then
    for i = 0 to len(project.symbols) - 1
      symbol_names = symbol_names + [project.symbols[i].qualified_name]
    end for
  end if
  return stringsAreAlphabetical(file_names) and stringsAreAlphabetical(symbol_names)
end function

function appearsBefore(text, left, right)
  left_pos = strings.indexOf(text, left, 0)
  right_pos = strings.indexOf(text, right, 0)
  return typeof(left_pos) == "int" and typeof(right_pos) == "int" and left_pos >= 0 and right_pos > left_pos
end function

function operatorMappingsAreComplete()
  lowered = ["pos", "neg", "not", "bitnot", "add", "sub", "mul", "div", "mod", "eq", "ne", "lt", "le", "gt", "ge", "bitand", "bitor", "bitxor", "shl", "shr"]
  source = ["+", "-", "not", "~", "+", "-", "*", "/", "%", "==", "!=", "<", "<=", ">", ">=", "&", "|", "^", "<<", ">>"]
  for i = 0 to len(lowered) - 1
    if analyzer._operatorSourceSymbol("__operator_" + lowered[i] + "__overload_7") != source[i] then return false end if
  end for
  return analyzer._operatorSourceSymbol("__operator_unknown__overload_0") == ""
end function

function main(args)
  if len(args) < 1 then
    print "usage: minidoc_tests <MiniDoc root>"
    return 2
  end if

  root = util.normalizePath(args[0])
  fixture = util.joinPath(root, "tests/fixtures/project")
  output_root = util.joinPath(root, "build/test-output")
  html_root = util.joinPath(output_root, "html")
  markdown_root = util.joinPath(output_root, "markdown")
  full_root = util.joinPath(output_root, "full")
  wiki_root = util.joinPath(output_root, "wiki")

  expect(util.htmlEscape("<tag a=\"b\">&") == "&lt;tag a=&quot;b&quot;&gt;&amp;", "HTML escaping", "unsafe characters were not escaped")
  expect(util.jsonEscape("a\n\"b") == "a\\n\\\"b", "JSON escaping", "control characters were not escaped")
  expect(util.sourceUrl("https://github.com/MiniLangProject/MiniDoc", "main", "../dependency/source.ml", 1) == "", "external source links", "a project repository URL was generated for an external dependency")
  expect(util.normalizePath("one\\two/../three") == "one/three", "path normalization", "mixed path segments were not normalized")
  expect(strings.join(util.sortedStrings(["zeta", "Alpha", "beta", "alpha"]), ",") == "Alpha,alpha,beta,zeta", "case-insensitive alphabetical sorting", "string ordering is not deterministic")

  comment_source = "/// Adds one.\n/// @param value Input value.\nfunction addOne(value as int) returns int\n  return value + 1\nend function\n"
  docs = comments.scan(comment_source)
  declaration_pos = strings.indexOf(comment_source, "function", 0)
  attached = comments.documentationBefore(docs, comment_source, declaration_pos)
  expect(len(docs) == 1 and attached.summary == "Adds one.", "line documentation parsing", "declaration summary was not associated")
  expect(comments.tagText(attached, "param", "value") == "Input value.", "documentation tags", "@param was not parsed")
  test_tag_source = "/// Tagged test.\n/// @testmethod addition\n/// @category unit\n/// @covers sample.addOne\n/// @timeout 500\nfunction taggedTest()\nend function\n"
  test_tag_docs = comments.scan(test_tag_source)
  test_tag_pos = strings.indexOf(test_tag_source, "function", 0)
  test_tag_block = comments.documentationBefore(test_tag_docs, test_tag_source, test_tag_pos)
  expect(comments.hasTag(test_tag_block, "testmethod") and comments.tagText(test_tag_block, "category", "unit") == "" and comments.tagText(test_tag_block, "covers", "sample.addOne") == "" and comments.tagText(test_tag_block, "timeout", "500") == "", "test metadata parsing", "std.test tag keys were not preserved")
  compatible_source = "// Uses the established MiniLang comment convention.\nfunction compatible()\nend function\n"
  compatible_docs = comments.scan(compatible_source)
  compatible_pos = strings.indexOf(compatible_source, "function", 0)
  compatible_attached = comments.documentationBefore(compatible_docs, compatible_source, compatible_pos)
  expect(compatible_attached.summary == "Uses the established MiniLang comment convention.", "ordinary comment compatibility", "leading // comment was not associated")
  block_source = "/* Describes a declaration. */\nfunction fromBlock()\nend function\n"
  block_docs = comments.scan(block_source)
  block_pos = strings.indexOf(block_source, "function", 0)
  block_attached = comments.documentationBefore(block_docs, block_source, block_pos)
  expect(block_attached.summary == "Describes a declaration.", "block comment compatibility", "leading block comment was not associated")

  config_path = util.joinPath(fixture, "minidoc.toml")
  cfg = configuration.load(["--config", config_path, "--html-out", html_root, "--md-out", markdown_root])
  if typeof(cfg) == "error" then
    expect(false, "configuration loading", cfg.message)
    return 1
  end if
  expect(cfg.project_name == "MiniDoc Fixture" and cfg.project_description == "A compact MiniLang project used to verify MiniDoc output." and len(cfg.defines) == 1 and cfg.dependency_mode == "summary" and cfg.graph_granularity == "package", "configuration loading", "manifest and MiniDoc settings were not merged")

  project = app.generate(cfg)
  if typeof(project) == "error" then
    expect(false, "project analysis", project.message)
    return 1
  end if
  expect(project.generator_version == "0.4.5" and project.generated_at == "" and project.source_revision == "fixture-revision-1234567890", "generation metadata", "MiniDoc version, source revision, or timestamp suppression is incorrect")
  expect(util.revisionLabel("fixture-revision-1234567890") == "fixture-revision-1234567890" and util.revisionLabel("0123456789abcdef0123456789abcdef01234567") == "0123456789ab", "revision labels", "explicit revision labels were truncated or Git IDs were not abbreviated")
  invalid_epoch = try(app._sourceDateEpochTimestamp("invalid"))
  expect(app._sourceDateEpochTimestamp("0") == "1970-01-01 00:00:00.000 UTC" and typeof(invalid_epoch) == "error", "reproducible timestamp", "SOURCE_DATE_EPOCH conversion or validation is incorrect")
  expect(hasDiagnostic(project, "MD1201") == false, "license header validation", "licensed fixture files produced a missing-license warning")
  expect(len(project.files) == 5, "source discovery", "expected entry, three imports, and one orphan")
  expect(hasUnreachableFile(project, "orphan.ml"), "reachability tracking", "orphan.ml was not marked unreachable")
  expect(projectOrderIsAlphabetical(project), "project model ordering", "files or symbols are not alphabetical")

  display = findSymbol(project, "sample.app.createDisplay")
  person = findSymbol(project, "sample.models.Person")
  person_value = findSymbol(project, "sample.models.Person.value")
  state = findSymbol(project, "sample.models.PersonState")
  active_state = findSymbol(project, "sample.models.PersonState.Active")
  enabled = findSymbol(project, "sample.feature.decorate")
  tagged_test = findSymbol(project, "sample.feature.FeatureTests.decoratedName")
  skipped_test = findSymbol(project, "sample.feature.FeatureTests.unavailableIntegration")
  max_attempts = findSymbol(project, "sample.app.MAX_ATTEMPTS")
  score_add = findSymbol(project, "sample.models.Score.operator +(Score,Score)")
  score_add_scalar = findSymbol(project, "sample.models.Score.operator +(Score,int)")
  score_positive = findSymbol(project, "sample.models.Score.operator +(Score)")
  score_negate = findSymbol(project, "sample.models.Score.operator -(Score)")
  expect(typeof(display) == "struct" and len(display.parameters) == 1 and display.parameters[0].description == "The unformatted name.", "function extraction", "signature or parameter documentation is incomplete")
  expect(typeof(max_attempts) == "struct" and max_attempts.kind == "constant" and max_attempts.signature == "const MAX_ATTEMPTS = 3", "constant extraction", "constant name, kind, or rendered signature is incorrect")
  expect(typeof(person) == "struct" and person.kind == "struct", "type extraction", "Person struct is missing")
  expect(typeof(person_value) == "struct" and person_value.summary == "The value is the person's raw name.", "field documentation position", "a field name inside its own documentation displaced the declaration position")
  expect(typeof(state) == "struct" and state.kind == "enum", "enum extraction", "PersonState enum is missing")
  expect(typeof(active_state) == "struct" and active_state.summary == "Active marks a person that can be displayed.", "variant documentation position", "a variant name inside its own documentation displaced the declaration position")
  expect(typeof(enabled) == "struct", "compile directives", "FEATURE-controlled declaration is missing")
  expect(typeof(tagged_test) == "struct" and comments.hasTag(tagged_test, "testmethod") and comments.tagText(tagged_test, "category", "unit") == "" and comments.tagText(tagged_test, "covers", "sample.feature.decorate") == "", "test symbol metadata", "tagged static test metadata is incomplete")
  expect(typeof(skipped_test) == "struct" and comments.hasTag(skipped_test, "skip"), "skipped test metadata", "@skip metadata is missing from the documented test")
  expect(typeof(score_add) == "struct" and score_add.kind == "operator" and score_add.name == "operator +" and score_add.signature == "operator inline +(left as Score, right as Score) returns Score" and score_add.summary == "Adds two scores.", "operator extraction", "binary operator metadata or declaration comments are incomplete")
  expect(typeof(score_add_scalar) == "struct" and score_add_scalar.id != score_add.id and score_add_scalar.parameters[1].description == "The scalar amount to add.", "operator overload identity", "operator overloads collided or lost parameter documentation")
  expect(typeof(score_positive) == "struct" and score_positive.id != score_add.id and score_positive.signature == "operator +(value as Score) returns Score", "operator arity identity", "unary and binary forms of the same source operator collided")
  expect(typeof(score_negate) == "struct" and score_negate.signature == "operator -(value as Score) returns Score", "unary operator extraction", "unary operator signature is incorrect")
  expect(operatorMappingsAreComplete(), "operator lowering map", "a supported compiler operator is not reconstructed correctly")
  expect(hasRelation(project, "calls", "sample.app.createDisplay", "sample.models.createPerson"), "call graph resolution", "aliased imported call was not resolved")
  expect(hasRelation(project, "implements", "sample.models.Person", "sample.models.Named"), "type graph resolution", "implements edge was not resolved")

  classify_metric = findFunctionMetric(project, "sample.feature.classify")
  asm_metric = findFunctionMetric(project, "sample.feature.asmClassify")
  callable_metric = findFunctionMetric(project, "sample.feature.callableKind")
  operator_metric = findFunctionMetric(project, "sample.models.Score.operator +(Score,Score)")
  expect(project.metrics.file_count == len(project.metrics.file_metrics) and project.metrics.source_lines > 0 and project.metrics.physical_lines >= project.metrics.source_lines, "line metrics", "project LOC totals or measured file count are invalid")
  expect(project.metrics.halstead.volume > 0.0 and project.metrics.halstead.vocabulary > 0, "Halstead metrics", "token metrics were not calculated")
  expect(typeof(classify_metric) == "struct" and classify_metric.cyclomatic_complexity == 5 and classify_metric.cognitive_complexity == 4 and classify_metric.maximum_nesting == 1, "complexity metrics", "fixture decision complexity was calculated incorrectly")
  expect(typeof(asm_metric) == "struct" and asm_metric.cyclomatic_complexity == 2 and asm_metric.cognitive_complexity == 1 and asm_metric.lines_of_code > 5, "inline asm metrics", "conditional assembly jump or function body was omitted from metrics")
  expect(typeof(callable_metric) == "struct" and callable_metric.lines_of_code > 1, "function LOC with string literal", "a string value named function corrupted the closing-line scan")
  expect(metrics._startsFunction("static function new()") and metrics._startsFunction("iterator function values()") and metrics._startsFunction("lazy iterator function values()") and not metrics._startsFunction("if typeof(value) == function then"), "function declaration detection", "function modifiers or normalized string values are classified incorrectly")
  expect(metrics._startsOperator("operator +(left as Score, right as Score)") and metrics._startsOperator("operator inline -(value as Score)") and not metrics._startsOperator("end operator"), "operator declaration detection", "operator metric boundaries are classified incorrectly")
  expect(typeof(operator_metric) == "struct" and operator_metric.lines_of_code == 3, "operator metrics", "operator LOC did not include its complete declaration body")
  expect(project.metrics.clone_group_count >= 1 and project.metrics.duplicated_lines >= 12 and project.metrics.duplication_percent > 0.0, "duplication metrics", "repeated normalized code was not detected")
  expect(project.metrics.documentation_coverage == 100.0 and project.metrics.documentation.api.percent == 100.0 and project.metrics.documentation.parameters.percent == 100.0 and project.metrics.documentation.fields.percent == 100.0 and project.metrics.documentation.enum_variants.percent == 100.0 and project.metrics.documentation.overall.percent == 100.0 and project.metrics.maintainability_index >= 0.0 and project.metrics.maintainability_index <= 100.0, "quality metrics", "granular coverage or maintainability index is invalid")

  rendered = app.render(project)
  expect(typeof(rendered) != "error", "documentation rendering", "renderer returned an error")
  html_index = readRequired(util.joinPath(html_root, "index.html"))
  html_symbols = readRequired(util.joinPath(html_root, "symbols.html"))
  html_file = readRequired(util.joinPath(html_root, "file-" + util.stableSlug("main.ml") + ".html"))
  html_metrics = readRequired(util.joinPath(html_root, "metrics.html"))
  html_dependencies = readRequired(util.joinPath(html_root, "dependencies.html"))
  html_tests = readRequired(util.joinPath(html_root, "tests.html"))
  markdown_home = readRequired(util.joinPath(markdown_root, "README.md"))
  markdown_dependencies = readRequired(util.joinPath(markdown_root, "Dependencies.md"))
  markdown_symbols = readRequired(util.joinPath(markdown_root, "Symbols.md"))
  markdown_metrics = readRequired(util.joinPath(markdown_root, "Metrics.md"))
  markdown_tests = readRequired(util.joinPath(markdown_root, "Tests.md"))
  html_score = readRequired(util.joinPath(html_root, "type-" + util.stableSlug("sample.models.Score") + ".html"))
  markdown_score = readRequired(util.joinPath(markdown_root, "Type-" + util.stableSlug("sample.models.Score") + ".md"))
  search_index = readRequired(util.joinPath(html_root, "search-index.json"))
  expect(strings.contains(html_index, "MiniDoc Fixture") and strings.contains(markdown_home, "MiniDoc Fixture API"), "home pages", "HTML or Markdown home page is missing")
  expect(strings.contains(html_index, "Generated by <strong>MiniDoc 0.4.5</strong> from source revision <code>fixture-revision-1234567890</code>") and not strings.contains(html_index, "<time>") and strings.contains(markdown_home, "Generated by MiniDoc 0.4.5 from MiniLang source at revision `fixture-revision-1234567890`"), "rendered generation metadata", "timestamp-free HTML or Markdown metadata is incorrect")
  expect(strings.contains(html_index, "class=\"lede\">A compact MiniLang project used to verify MiniDoc output.") and strings.contains(markdown_home, "A compact MiniLang project used to verify MiniDoc output."), "project introduction", "configured project description is missing from the home page")
  expect(strings.contains(html_index, "<h2 id=\"overview-title\">Project at a glance</h2>") and strings.contains(html_index, "Documentation coverage") and strings.contains(markdown_home, "## Project at a glance"), "home page metrics", "project overview metrics are missing")
  expect(strings.contains(html_index, "<h2 id=\"explore-title\">Explore the documentation</h2>") and strings.contains(html_index, "<div class=\"cards\"><a href=\"graph-calls.html\">") and strings.contains(html_index, "href=\"diagnostics.html\"><strong>Diagnostics"), "home navigation cards", "Browse links are not contained in the card grid")
  expect(strings.contains(html_file, "safe &lt;label&gt; &amp; value") and not strings.contains(html_file, "<label>"), "safe HTML output", "documentation text was not escaped")
  expect(strings.contains(html_file, "See also") and strings.contains(html_file, "sample.models.createPerson") and strings.contains(html_file, "View source"), "structured HTML tags", "@see or source metadata is missing")
  expect(strings.contains(html_symbols, "sample.app.createDisplay") and strings.contains(markdown_symbols, "sample.models.Person"), "symbol indexes", "public symbols are missing")
  expect(strings.contains(html_score, "operator inline +(left as Score, right as Score) returns Score") and strings.contains(html_score, "operator +(left as Score, amount as int) returns Score") and strings.contains(markdown_score, "operator -(value as Score) returns Score"), "operator rendering", "HTML or Markdown type pages omitted operator overloads")
  expect(strings.contains(search_index, "sample.models.Score.operator +(Score,Score)") and strings.contains(search_index, "\"kind\":\"operator\"") and not strings.contains(html_score, "__operator_") and not strings.contains(markdown_score, "__operator_") and not strings.contains(search_index, "__operator_"), "operator search and internals", "operator search metadata is missing or lowered compiler names leaked into output")
  expect(strings.contains(html_tests, "sample.feature.FeatureTests.decoratedName") and strings.contains(html_tests, "sample.feature.decorate") and strings.contains(html_tests, "sample.feature.prepareFeature") and strings.contains(html_tests, "@beforeeach") and strings.contains(markdown_tests, "unavailableIntegration") and strings.contains(markdown_tests, "skipped") and strings.contains(markdown_tests, "sample.feature.prepareFeature") and strings.contains(markdown_tests, "@beforeeach"), "test inventory rendering", "HTML or Markdown test metadata page is incomplete")
  expect(not strings.contains(html_symbols, "secretHelper") and not strings.contains(markdown_symbols, "secretHelper"), "internal filtering", "@internal function leaked into public indexes")
  expect(strings.contains(html_metrics, "Halstead metrics") and strings.contains(html_metrics, "sample.feature.classify") and strings.contains(html_metrics, "API declarations") and strings.contains(markdown_metrics, "Code duplication") and strings.contains(markdown_metrics, "| Parameters |"), "metrics rendering", "HTML or Markdown metrics content is missing")
  expect(strings.contains(html_dependencies, "external.helper") and strings.contains(markdown_dependencies, "external.helper") and not strings.contains(html_symbols, "external.helper.passThrough") and not strings.contains(markdown_symbols, "external.helper.passThrough"), "dependency summary mode", "external dependency APIs were expanded or their summary page is missing")
  expect(appearsBefore(html_index, "href=\"graph-calls.html\"><strong>Call graph", "href=\"diagnostics.html\"><strong>Diagnostics") and appearsBefore(html_index, "href=\"diagnostics.html\"><strong>Diagnostics", "href=\"dependencies.html\"><strong>Dependencies") and appearsBefore(html_index, "href=\"dependencies.html\"><strong>Dependencies", "href=\"files.html\"><strong>Files") and appearsBefore(html_index, "href=\"files.html\"><strong>Files", "href=\"graph-imports.html\"><strong>Import graph") and appearsBefore(html_index, "href=\"metrics.html\"><strong>Metrics", "href=\"packages.html\"><strong>Packages"), "alphabetical HTML navigation", "browse cards are not alphabetical")
  expect(appearsBefore(markdown_home, "- [All symbols]", "- [Call graph]") and appearsBefore(markdown_home, "- [Metrics]", "- [Packages]"), "alphabetical Markdown navigation", "browse links are not alphabetical")
  expect(fs.exists(util.joinPath(html_root, "assets/graph-imports.svg")) and fs.exists(util.joinPath(markdown_root, "assets/graph-calls.svg")), "graph rendering", "expected SVG graph files are missing")
  graph_imports = readRequired(util.joinPath(html_root, "assets/graph-imports.svg"))
  expect(strings.contains(graph_imports, "Relations are aggregated by package") and strings.contains(graph_imports, "external.helper") and fs.exists(util.joinPath(html_root, "graph-types.html")) == false, "scalable graphs", "package aggregation, external package visibility, or empty-graph suppression is incorrect")
  expect(fs.exists(util.joinPath(html_root, "search-index.json")) and fs.exists(util.joinPath(markdown_root, ".minidoc-output")), "output manifests", "search index or output manifest is missing")
  html_css = readRequired(util.joinPath(html_root, "assets/minidoc.css"))
  expect(strings.contains(html_css, ".cards a{display:flex;min-width:0") and strings.contains(html_css, "overflow-wrap:anywhere") and strings.contains(html_css, ".cards{grid-template-columns:1fr}"), "responsive package cards", "long card labels are not protected against overflow")
  manifest_entries = strings.split(strings.trim(readRequired(util.joinPath(html_root, ".minidoc-output"))), "\n")
  expect(stringsAreAlphabetical(manifest_entries), "alphabetical output manifest", "generated HTML files are not listed alphabetically")

  first_html = html_index
  first_markdown = markdown_home
  rendered_again = app.render(project)
  expect(typeof(rendered_again) != "error" and first_html == readRequired(util.joinPath(html_root, "index.html")) and first_markdown == readRequired(util.joinPath(markdown_root, "README.md")), "deterministic rendering", "same input produced different output")

  project.config.formats = ["html"]
  project.config.dependency_mode = "full"
  project.config.html_out = full_root
  full_rendered = app.render(project)
  full_symbols = readRequired(util.joinPath(full_root, "symbols.html"))
  expect(typeof(full_rendered) != "error" and strings.contains(full_symbols, "external.helper.passThrough") and fs.exists(util.joinPath(full_root, "dependencies.html")) == false, "full dependency mode", "full mode did not expand dependency APIs or emitted a redundant summary page")

  project.config.formats = ["markdown"]
  project.config.dependency_mode = "summary"
  project.config.markdown_profile = "wiki"
  project.config.markdown_out = wiki_root
  wiki_rendered = app.render(project)
  sidebar = readRequired(util.joinPath(wiki_root, "_Sidebar.md"))
  expect(typeof(wiki_rendered) != "error" and fs.exists(util.joinPath(wiki_root, "Home.md")) and fs.exists(util.joinPath(wiki_root, "Metrics.md")) and strings.contains(sidebar, "[Metrics](Metrics)"), "GitHub Wiki profile", "Home.md, Metrics.md, or _Sidebar.md is missing")

  project.config.formats = ["html"]
  project.config.html_out = config_path
  failed_render = try(app.render(project))
  expect(typeof(failed_render) == "error", "output error propagation", "an unwritable output location did not return an error")
  expect(app.run([]) == 2, "missing input handling", "empty command line did not return configuration exit code 2")
  warning_entry = util.joinPath(root, "tests/fixtures/warning/main.ml")
  warning_cfg = configuration.load([warning_entry, "--check", "--no-graphs"])
  warning_project = app.generate(warning_cfg)
  expect(typeof(warning_project) != "error" and hasDiagnostic(warning_project, "MD1201"), "missing license header diagnostic", "headerless fixture did not produce MD1201")
  if typeof(warning_project) != "error" and len(warning_project.diagnostics) > 0 then
    expect(warning_project.diagnostics[0].file_path == "main.ml", "relative diagnostic paths", "diagnostic exposed an absolute local path")
  end if
  expect(app.run([warning_entry, "--check", "--strict", "--no-graphs"]) == 1, "strict warning policy", "document coverage warning did not produce exit code 1")

  quality_entry = util.joinPath(root, "tests/fixtures/quality/main.ml")
  quality_cfg = configuration.load([quality_entry, "--check", "--no-graphs"])
  quality_project = app.generate(quality_cfg)
  expect(typeof(quality_project) != "error" and hasDiagnostic(quality_project, "MD2104") and hasDiagnostic(quality_project, "MD2105"), "documentation contract diagnostics", "missing @param or @returns contracts were not reported")
  expect(typeof(quality_project) != "error" and hasDiagnostic(quality_project, "MD2202") and countDiagnostics(quality_project, "MD2203") == 1, "summary quality diagnostics", "generic or reused summaries were not reported deterministically")
  expect(typeof(quality_project) != "error" and hasDiagnostic(quality_project, "MD2301") and hasDiagnostic(quality_project, "MD2302") and hasDiagnostic(quality_project, "MD2303") and hasDiagnostic(quality_project, "MD2304") and hasDiagnostic(quality_project, "MD2305") and hasDiagnostic(quality_project, "MD2306") and hasDiagnostic(quality_project, "MD2307") and hasDiagnostic(quality_project, "MD2308") and hasDiagnostic(quality_project, "MD2309"), "test metadata diagnostics", "invalid std.test declaration metadata was not diagnosed")

  oop_config_path = util.joinPath(root, "tests/fixtures/oop/minidoc.toml")
  oop_html = util.joinPath(output_root, "oop-html")
  oop_markdown = util.joinPath(output_root, "oop-markdown")
  oop_cfg = configuration.load(["--config", oop_config_path, "--html-out", oop_html, "--md-out", oop_markdown])
  oop_project = app.generate(oop_cfg)
  expect(typeof(oop_project) != "error", "OOP fixture analysis", "class and interface declarations were not parsed")
  if typeof(oop_project) != "error" then
    base_type = findSymbol(oop_project, "sample.oop.Base")
    child_type = findSymbol(oop_project, "sample.oop.Item")
    child_method = findSymbol(oop_project, "sample.oop.Item.description")
    protected_field = findSymbol(oop_project, "sample.oop.Base.value")
    derived_interface = findSymbol(oop_project, "sample.oop.Described")
    expect(typeof(base_type) == "struct" and base_type.kind == "class" and base_type.signature == "abstract class Base implements Described", "abstract class documentation", "class kind or declaration signature is incorrect")
    expect(typeof(child_type) == "struct" and child_type.kind == "class" and child_type.signature == "final class Item extends Base", "derived class documentation", "base class or final modifier is missing")
    expect(typeof(child_method) == "struct" and child_method.signature == "override function description() returns string", "override documentation", "override modifier is missing")
    expect(typeof(protected_field) == "struct" and protected_field.signature == "protected value as string = \"base\"", "field visibility and default", "protected field source contract is missing")
    expect(typeof(derived_interface) == "struct" and derived_interface.signature == "interface Described extends Named", "interface inheritance documentation", "base interface is missing")
    expect(hasRelation(oop_project, "extends", "sample.oop.Item", "sample.oop.Base") and hasRelation(oop_project, "extends", "sample.oop.Described", "sample.oop.Named"), "inheritance relations", "class or interface edge is unresolved")
    oop_rendered = app.render(oop_project)
    expect(typeof(oop_rendered) != "error" and fs.exists(util.joinPath(oop_html, "index.html")) and fs.exists(util.joinPath(oop_markdown, "Symbols.md")), "OOP documentation rendering", "HTML or Markdown symbol page is missing")
  end if

  if _failures > 0 then
    print "MiniDoc tests: " + _failures + " failure(s)."
    return 1
  end if
  print "MiniDoc tests: all checks passed."
  return 0
end function
