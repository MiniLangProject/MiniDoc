# Changelog

All notable changes to MiniDoc are documented in this file.

## 0.4.2 — 2026-09-02

- Fixed function LOC detection when a function body contains the string literal
  `"function"`; normalized string tokens can no longer masquerade as nested
  declarations and collapse long functions to one reported line.
- Added `output.include_timestamp`, `--no-timestamp`, and `SOURCE_DATE_EPOCH`
  support so separately generated documentation trees can be byte-identical.
- Added regressions for both the LOC edge case and reproducible timestamp
  conversion, suppression, and rendering.

## 0.4.1 — 2026-09-02

- Fixed declaration source locations when a field, enum variant, or other symbol
  name also appears in its own documentation comment.
- Made constant signature rendering robust for `void` and other values that do
  not have a string representation.
- Added regression coverage for declaration comments that mention their target
  names and for the corrected source positions.

## 0.4.0 — 2026-09-02

- Added documentation coverage for API declarations, parameters, fields, constants, globals, enum variants, and the combined documentation contract.
- Added configurable warnings for missing `@param` and `@returns` documentation, known generic summaries, and summaries reused above a configurable threshold.
- Added `none`, `summary`, and `full` dependency-output modes; the default summary mode keeps imported libraries out of project API indexes while preserving a compact inventory.
- Added package-level graph aggregation, duplicate-edge removal, dependency-boundary filtering, and empty-graph suppression, with symbol-level graphs still available on demand.
- Added automatic Git `HEAD` detection and explicit source-revision metadata in HTML and Markdown output.
- Added stale generated-file cleanup based on the previous safe output manifest.
- Added interface-method documentation association and inherited `@internal` visibility for container members.
- Made diagnostic collection linear so large warning sets no longer degrade quadratically.
- Removed residual constant-signature debug output and added regression coverage for constant extraction.
- Expanded the MiniLang test suite for dependency modes, contract quality, summary quality, granular coverage, source revisions, and scalable graphs.

## 0.3.0 — 2026-09-02

- Added project introductions, project statistics, and structured navigation to generated home pages.
- Added LOC, cyclomatic complexity, cognitive complexity, duplicate-code, Halstead, maintainability, and documentation-coverage metrics.
- Added deterministic case-insensitive ordering throughout HTML and Markdown output.
- Added generator version and local generation time to generated documentation.
- Added responsive navigation and package cards for long names.
- Added `MD1201` warnings for project source files without recognized license headers.
- Added complete MiniDoc source annotations and committed self-generated HTML and Markdown API documentation.

## 0.1.0 — 2026-09-02

- Added the self-hosted MiniLang analysis pipeline.
- Added offline HTML and GitHub-compatible Markdown renderers.
- Added imports, calls, and interface-implementation SVG graphs.
- Added configuration loading, diagnostics, deterministic manifests, and the MiniLang test suite.
