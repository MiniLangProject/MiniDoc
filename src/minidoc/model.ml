/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Defines the format-independent data model shared by every MiniDoc stage.

package minidoc.model

/// Runtime configuration shared by discovery, analysis, and rendering.
/// @internal
struct Config
  project_name,
  project_description,
  project_file,
  config_file,
  entry,
  include_dirs,
  source_roots,
  excludes,
  target,
  defines,
  formats,
  html_out,
  markdown_out,
  markdown_profile,
  include_internal,
  reachable_only,
  strict,
  check_only,
  keep_going,
  graph_imports,
  graph_calls,
  graph_types,
  graph_max_nodes,
  repository,
  repository_ref,
  dependency_mode,
  contract_warnings,
  summary_quality_warnings,
  duplicate_summary_threshold,
  graph_granularity,
  hide_empty_graphs,
  source_revision,
end struct

/// One structured documentation tag such as @param or @see.
/// @internal
struct DocTag
  name,
  key,
  text,
end struct

/// A declaration or file documentation block found in source text.
/// @internal
struct DocBlock
  target_kind,
  start_pos,
  end_pos,
  start_line,
  end_line,
  body,
  summary,
  details,
  tags,
  internal,
  used,
end struct

/// One function parameter in display order.
/// @internal
struct ParameterDoc
  name,
  type_name,
  optional,
  default_value,
  variadic,
  description,
end struct

/// A flat symbol record. Container relationships reconstruct the hierarchy.
/// @internal
struct SymbolDoc
  id,
  kind,
  name,
  qualified_name,
  container_id,
  package_name,
  namespace_name,
  file_id,
  file_path,
  position,
  line,
  column,
  signature,
  type_name,
  modifiers,
  parameters,
  return_type,
  summary,
  details,
  tags,
  internal,
  deprecated,
  source_url,
end struct

/// A resolved or unresolved import from one source file.
/// @internal
struct ImportDoc
  request,
  alias,
  module_name,
  source_file_id,
  target_file_id,
  resolved_path,
  position,
end struct

/// Parsed information for one MiniLang source file.
/// @internal
struct FileDoc
  id,
  path,
  relative_path,
  package_name,
  summary,
  details,
  imports,
  symbol_ids,
  reachable,
  source,
  processed_source,
  program,
  docs,
end struct

/// Graph relation. Certainty is exact, inferred, dynamic, or unresolved.
/// @internal
struct RelationDoc
  from_id,
  to_id,
  kind,
  certainty,
  label,
end struct

/// Deferred call reference resolved after every symbol has been indexed.
/// @internal
struct CallReference
  caller_id,
  raw_target,
  file_id,
  package_name,
  namespace_name,
  position,
  dynamic,
end struct

/// Stable diagnostic emitted by extraction, validation, or rendering.
/// @internal
struct Diagnostic
  severity,
  code,
  file_path,
  line,
  column,
  message,
end struct

/// Halstead token metrics for a source scope.
/// @internal
struct HalsteadMetrics
  distinct_operators,
  distinct_operands,
  total_operators,
  total_operands,
  vocabulary,
  length,
  volume,
  difficulty,
  effort,
  estimated_bugs,
end struct

/// Metrics for one documented function or method.
/// @internal
struct FunctionMetrics
  symbol_id,
  qualified_name,
  file_id,
  file_path,
  line,
  lines_of_code,
  statement_count,
  cyclomatic_complexity,
  cognitive_complexity,
  maximum_nesting,
  parameter_count,
  halstead,
  maintainability_index,
end struct

/// Metrics aggregated for one MiniLang source file.
/// @internal
struct FileMetrics
  file_id,
  file_path,
  physical_lines,
  source_lines,
  comment_lines,
  blank_lines,
  function_count,
  statement_count,
  cyclomatic_complexity,
  average_cyclomatic_complexity,
  maximum_cyclomatic_complexity,
  cognitive_complexity,
  maximum_cognitive_complexity,
  duplicated_lines,
  duplication_percent,
  halstead,
  maintainability_index,
end struct

/// One occurrence of a normalized duplicate-code window.
/// @internal
struct CloneOccurrence
  file_id,
  file_path,
  line,
end struct

/// A repeated normalized code window. Overlapping windows are de-duplicated
/// when the duplicated-line totals are calculated.
/// @internal
struct CloneGroup
  fingerprint,
  line_count,
  occurrences,
end struct

/// One documentation-coverage category.
/// @internal
struct CoverageMetric
  documented,
  total,
  percent,
end struct

/// Coverage split by API surface so one headline cannot hide weak categories.
/// @internal
struct DocumentationCoverage
  api,
  parameters,
  fields,
  constants,
  globals,
  enum_variants,
  overall,
end struct

/// Project-wide source and quality metrics.
/// @internal
struct ProjectMetrics
  physical_lines,
  source_lines,
  comment_lines,
  blank_lines,
  file_count,
  function_count,
  statement_count,
  cyclomatic_complexity,
  average_cyclomatic_complexity,
  maximum_cyclomatic_complexity,
  cognitive_complexity,
  maximum_cognitive_complexity,
  duplicated_lines,
  duplication_percent,
  clone_group_count,
  documented_symbols,
  documentable_symbols,
  documentation_coverage,
  documentation,
  halstead,
  maintainability_index,
  file_metrics,
  function_metrics,
  clone_groups,
  duplicate_window_size,
end struct

/// Complete format-independent documentation model.
/// @internal
struct ProjectDoc
  config,
  root_dir,
  generator_version,
  generated_at,
  source_revision,
  files,
  symbols,
  relations,
  call_references,
  diagnostics,
  metrics,
  complete,
end struct

/// Creates a configuration populated with safe default values.
/// @since 0.1.0
function defaultConfig()
  return Config(
    "",
    "",
    "",
    "",
    "",
    [],
    [],
    [".git", ".minilang-cache", "build", "dist"],
    "windows-x64",
    [],
    ["html", "markdown"],
    "build/minidoc/html",
    "build/minidoc/markdown",
    "repository",
    false,
    false,
    false,
    false,
    false,
    true,
    true,
    true,
    250,
    "",
    "main",
    "summary",
    "public",
    "public",
    3,
    "package",
    true,
    ""
  )
end function

/// Creates an empty documentation block.
/// @since 0.1.0
function emptyDocBlock()
  return DocBlock("none", 0, 0, 0, 0, "", "", "", [], false, false)
end function

/// Creates a source diagnostic.
/// @param severity Diagnostic severity such as warning or error.
/// @param code Stable MiniDoc diagnostic code.
/// @param file_path Source file associated with the diagnostic.
/// @param line One-based source line.
/// @param column One-based source column.
/// @param message Human-readable diagnostic message.
/// @since 0.1.0
function newDiagnostic(severity, code, file_path, line, column, message)
  return Diagnostic(severity, code, file_path, line, column, message)
end function

/// Creates an empty project model for a configuration and root directory.
/// @param config Effective MiniDoc configuration.
/// @param root_dir Absolute project root directory.
/// @since 0.1.0
function emptyProject(config, root_dir)
  return ProjectDoc(config, root_dir, "", "", "", [], [], [], [], [], emptyProjectMetrics(), true)
end function

/// Creates an empty Halstead metric result.
/// @since 0.2.0
function emptyHalsteadMetrics()
  return HalsteadMetrics(0, 0, 0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0)
end function

/// Creates an empty aggregate project metric result.
/// @since 0.2.0
function emptyProjectMetrics()
  empty_coverage = CoverageMetric(0, 0, 100)
  documentation = DocumentationCoverage(empty_coverage, empty_coverage, empty_coverage, empty_coverage, empty_coverage, empty_coverage, empty_coverage)
  return ProjectMetrics(0, 0, 0, 0, 0, 0, 0, 0, 0.0, 0, 0, 0, 0, 0.0, 0, 0, 0, 0.0, documentation, emptyHalsteadMetrics(), 0.0, [], [], [], 6)
end function
