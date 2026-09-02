# MiniDoc

[![License: Apache-2.0](https://img.shields.io/badge/License-Apache--2.0-blue.svg)](LICENSE)
[![Language: MiniLang](https://img.shields.io/badge/written%20in-MiniLang-5b5bd6.svg)](src/main.ml)

MiniDoc is a documentation generator for MiniLang projects, written entirely in MiniLang. It reads the same project structure and source syntax as the self-hosted MiniLang compiler and produces either an offline HTML documentation site, a linked Markdown documentation tree, or both.

> Project status: working preview (`0.3.0`). The end-to-end generator, HTML and Markdown renderers, source metrics, dependency graphs, configuration loader, and MiniLang test suite are implemented. See [Current limitations](#current-limitations) before treating the output as a complete semantic API reference.

The repository dogfoods MiniDoc. Browse the committed [GitHub-friendly API documentation](docs/api/markdown/README.md), or download the repository and open [the offline HTML start page](docs/api/html/index.html). Both trees are regenerated from the documented MiniDoc source with [`minidoc.toml`](minidoc.toml).

## Highlights

- Uses the self-hosted MiniLang compiler frontend instead of maintaining a second grammar.
- Reads an entry file, a `minilang.toml` project, or a dedicated `minidoc.toml` file.
- Follows imports and can also discover non-reachable `.ml` source files below configured roots.
- Understands compile-time definitions and the selected MiniLang target.
- Documents packages, namespaces, functions, nested functions, parameters, structs, fields, methods, interfaces, enums, constants, globals, and extern functions.
- Preserves signatures, parameter types, optional markers, defaults, variadic parameters, return types, and function modifiers.
- Generates an offline HTML site with navigation and client-side symbol search.
- Generates a project-specific introduction, an at-a-glance metrics dashboard, and responsive navigation cards on the home page.
- Adds the MiniDoc version and local generation timestamp to HTML footers and Markdown home pages.
- Keeps long package and navigation card labels inside responsive card boundaries.
- Generates GitHub-compatible repository Markdown or a GitHub Wiki tree with `Home.md` and `_Sidebar.md`.
- Emits static SVG import, call, and interface-implementation graphs without Graphviz.
- Calculates LOC, cyclomatic and cognitive complexity, duplicate code, Halstead metrics, maintainability, and documentation coverage.
- Produces stable page names, anchors, case-insensitive alphabetical ordering, and output manifests for reproducible builds.
- Escapes generated HTML and ships with a restrictive Content Security Policy.
- Warns with `MD1201` when a MiniLang source file has no recognized SPDX or copyright/license header.

## Quick start

### Prerequisites

MiniDoc currently builds against the self-hosted [MiniLang compiler](https://github.com/MiniLangProject/MiniLangCompilerML). The default build scripts expect sibling checkouts:

```text
workspace/
├── MiniDoc/
└── MiniLangCompilerML/
```

On Windows, a compiler at another location can be selected with `-Compiler`. On Linux, set `MINILANG_COMPILER`; the compiler source checkout must still be available as an import root beside MiniDoc.

### Windows

From the repository root:

```powershell
.\build.ps1
```

The script builds `build/minidoc.exe`, builds the MiniLang test executable, and runs the complete test suite.

To compile without running tests:

```powershell
.\build.ps1 -SkipTests
```

To use a compiler at another location:

```powershell
.\build.ps1 -Compiler C:\path\to\mlc_win64.exe
```

### Linux

```bash
./build.sh
```

Set `MINILANG_COMPILER` when the compiler is not available at `../MiniLangCompilerML/build/mlc_linux_x64` relative to MiniDoc.

### Generate documentation

For one entry file:

```powershell
.\build\minidoc.exe .\src\main.ml
```

For a MiniLang project manifest:

```powershell
.\build\minidoc.exe --project .\minilang.toml
```

For a dedicated MiniDoc configuration:

```powershell
.\build\minidoc.exe --config .\minidoc.toml
```

By default, MiniDoc writes HTML to `build/minidoc/html` and Markdown to `build/minidoc/markdown`. Relative paths in a project or MiniDoc configuration are resolved from the directory containing that file. Relative command-line output paths are resolved from the current working directory.

## Documentation comments

MiniDoc recognizes declaration comments and file comments. `///` is the preferred explicit declaration form; a normal `//` block immediately preceding a declaration is also accepted for compatibility with established MiniLang projects.

```ml
//! Public services exposed by this source file.

package example.services

/// Loads a user by identifier.
///
/// The cache is checked before persistent storage.
/// @param id The stable user identifier.
/// @returns The matching user.
/// @error NOT_FOUND No user has this identifier.
/// @see example.models.User
/// @since 1.2.0
function loadUser(id as int) returns User
  // ...
end function
```

The block forms `/** ... */` and `/*! ... */` are supported as declaration and file documentation respectively. A normal `/* ... */` block directly before a declaration is accepted as well. A declaration comment must be separated from its declaration only by whitespace.

Supported structured tags are:

| Tag | Purpose |
| --- | --- |
| `@param name text` | Documents a named parameter. |
| `@returns text` | Documents the return value. |
| `@error name text` | Documents an error contract. |
| `@deprecated text` | Marks an API as deprecated. |
| `@see target text` | Adds a related-symbol reference. |
| `@since version` | Records the first project version containing the API. |
| `@example text` | Adds example content. Continuation lines belong to the tag. |
| `@group name` | Records a logical documentation group for future presentation. |
| `@internal` | Hides a declaration unless `--include-internal` is active. |

MiniDoc currently verifies duplicate and unknown `@param` names and warns when `@returns` is attached to a function without a declared return contract. Public functions, structs, interfaces, enums, and extern functions without a summary also produce documentation warnings. Every project-owned MiniLang source file is checked for a leading license declaration; imported dependencies are documented but do not produce project policy warnings. `MD1201` accepts an SPDX identifier or a conventional header containing copyright and license wording within the first 4 KiB.

## Output formats

### HTML

The HTML output is a static, offline site. It includes:

- home, package, file, type, symbol, diagnostics, and metrics pages;
- responsive styling with no external assets;
- a local JSON symbol index and small search script;
- source links when a repository URL is configured;
- import, call, and type graph pages with generated SVG files;
- a `.minidoc-output` manifest listing generated files.

Typical output:

```text
build/minidoc/html/
├── index.html
├── packages.html
├── files.html
├── symbols.html
├── diagnostics.html
├── metrics.html
├── package-*.html
├── file-*.html
├── type-*.html
├── graph-*.html
├── search-index.json
├── .minidoc-output
└── assets/
    ├── minidoc.css
    ├── minidoc.js
    └── graph-*.svg
```

The site remains navigable without JavaScript; JavaScript is used only for symbol search.

### Markdown

The `repository` profile creates a GitHub-renderable documentation directory whose start page is `README.md`. The `wiki` profile creates `Home.md` and `_Sidebar.md` and uses Wiki-compatible page links.

Typical output:

```text
build/minidoc/markdown/
├── README.md             # Home.md for the wiki profile
├── _Sidebar.md           # Wiki profile only
├── Packages.md
├── Files.md
├── Symbols.md
├── Diagnostics.md
├── Metrics.md
├── Package-*.md
├── File-*.md
├── Type-*.md
├── Graph-*.md
├── .minidoc-output
└── assets/
    └── graph-*.svg
```

All links are relative so the tree can be committed under `docs/`, copied into a GitHub Wiki checkout, or opened locally.

## Source metrics

The `Metrics` page is generated for both HTML and Markdown output. Metrics use target-specific, conditionally preprocessed files inside the configured source roots, so inactive `#if` branches are not included. Resolved imports outside those roots remain documented but are excluded from project metrics, as are excluded paths and generated documentation.

| Metric | Definition |
| --- | --- |
| LOC | Physical lines, source lines containing MiniLang tokens, comment lines, and blank lines. Mixed code/comment lines can count in both source and comment totals. |
| Cyclomatic complexity | One base path per executable function plus conditions, loops, switch cases, and logical `and`/`or` operators. |
| Cognitive complexity | Decision complexity weighted by nesting; logical `and`/`or` operators add one. |
| Code duplication | Repeated windows of six contiguous token-normalized code lines. Comments and formatting whitespace are ignored, and overlapping matches count each duplicated line once. |
| Halstead | Distinct and total operators and operands, vocabulary, length, volume, difficulty, effort, and estimated defects, calculated from MiniLang lexer tokens. |
| Maintainability index | A normalized 0–100 score based on Halstead volume, cyclomatic complexity, and source lines. The project value is source-line weighted across files. |
| Documentation coverage | Percentage of non-internal API declarations checked by `MD2201`—functions, structs, interfaces, enums, and extern functions—that have a documentation summary. |

The page contains project totals, an alphabetical per-file table, an alphabetical per-function table, and up to 200 representative clone groups. Aggregate clone totals always include every detected group.

All browse lists, indexes, diagnostics, imports, graph nodes, metric tables, and output manifests use deterministic case-insensitive alphabetical ordering. Declaration-order data whose position changes meaning—most notably function parameters and examples—remains in source order. A single local timestamp is captured per generation and reused across every rendered page; rendering the same in-memory project model therefore remains deterministic.

## Dependency graphs

MiniDoc renders three independent graph types:

| Graph | Meaning | Confidence |
| --- | --- | --- |
| Imports | Resolved source-file imports | Exact |
| Calls | Statically recognizable function and method calls | Exact, dynamic, or unresolved |
| Types | `struct implements Interface` relationships | Exact or unresolved |

Call analysis is deliberately conservative. MiniLang supports dynamic values and higher-order calls, so MiniDoc never presents every inferred call as compiler-proven. Non-exact edges are dashed in SVG output. `graphs.max_nodes` limits graph size; larger graphs are marked as truncated.

## Command line

```text
minidoc <entry.ml> [options]
minidoc --project <minilang.toml> [options]
minidoc --config <minidoc.toml> [options]
```

| Option | Description |
| --- | --- |
| `--project <file>` | Read a MiniLang project manifest. |
| `--config <file>` | Read a MiniDoc configuration. |
| `-I`, `--import-path <dir>` | Add an import root. Repeatable. |
| `-DNAME[=VALUE]` | Set a compile-time definition. Repeatable. |
| `--target <target>` | Select `windows-x64` or `linux-x64`. |
| `--name <name>` | Override the displayed project name. |
| `--description <text>` | Override the project introduction shown on the home page. |
| `--format <value>` | Generate `html`, `markdown`, `md`, `all`, or a comma-separated selection. |
| `--html-out <dir>` | Override the HTML output directory. |
| `--md-out <dir>` | Override the Markdown output directory. |
| `--md-profile <profile>` | Select `repository` or `wiki`. |
| `--graph <list>` | Enable a comma-separated subset of `imports,calls,types`. |
| `--no-graphs` | Disable all graph output. |
| `--reachable-only` | Exclude source files not reachable from the entry file. |
| `--include-internal` | Include declarations tagged with `@internal`. |
| `--check` | Analyze and validate without writing output. |
| `--strict` | Return exit code `1` if documentation warnings exist. |
| `--keep-going` | Retain partial models and label output incomplete after parse or import errors. |
| `--help`, `-h` | Show command help. |
| `--version` | Show the MiniDoc version. |

Configuration precedence is:

1. MiniLang project manifest;
2. MiniDoc configuration;
3. command-line arguments.

Later compile definitions override earlier definitions with the same name, matching the compiler's behavior.

## Configuration

Copy [`minidoc.toml.example`](minidoc.toml.example) to `minidoc.toml` and adjust the paths:

```toml
[project]
name = "Example MiniLang Project"
description = "A short introduction displayed on the generated home page."
manifest = "../MyProject/minilang.toml"
source_roots = ["../MyProject/src"]
exclude = ["generated", "tests/fixtures"]

[documentation]
include_internal = false
reachable_only = false
strict = false

[output]
formats = ["html", "markdown"]
html_dir = "build/minidoc/html"
markdown_dir = "build/minidoc/markdown"
markdown_profile = "repository"

[graphs]
imports = true
calls = true
types = true
max_nodes = 250

[links]
repository = "https://github.com/example/project"
ref = "main"
```

The optional `project.description` value is used as the introduction on HTML and Markdown home pages. Without it, MiniDoc supplies a concise project-name-based fallback.

The MiniDoc parser intentionally accepts a focused TOML subset: section headers, scalar strings, booleans, integers, and arrays of quoted strings. Unknown fields fail fast instead of being silently ignored. Compiler-only fields in `minilang.toml` are accepted and ignored where they do not affect documentation.

## Analysis pipeline

```mermaid
flowchart LR
    A[CLI and TOML configuration] --> B[Source discovery]
    B --> C[Compiler directives]
    C --> D[Self-hosted MiniLang parser]
    D --> E[Documentation comment association]
    E --> F[Format-independent project model]
    F --> G[Relationship resolution]
    G --> H[Metrics and ordering]
    H --> I[HTML renderer]
    H --> J[Markdown renderer]
    H --> K[SVG graph renderer]
```

The parsed project model is independent of output format. This keeps symbol identity, diagnostics, links, and graph relationships consistent across HTML and Markdown.

The entry file and all resolved imports are analyzed first. Unless `reachable_only` is enabled, configured source roots are scanned afterward to include orphan modules. Every file records whether it is reachable from the entry point.

## Diagnostics and exit codes

Diagnostics include a stable code, severity, file, line, column, and message. They are printed to the console and included in generated output.

| Exit code | Meaning |
| ---: | --- |
| `0` | Generation succeeded under the selected policy. |
| `1` | `--strict` was enabled and documentation warnings were found. |
| `2` | Configuration, parsing, import resolution, analysis, or output failed. |

Without `--keep-going`, errors prevent rendering. With `--keep-going`, MiniDoc writes an explicitly incomplete documentation set and still returns `2` when errors remain.

## Repository layout

```text
MiniDoc/
├── docs/api/
│   ├── html/                 # Self-generated offline documentation
│   └── markdown/             # Self-generated GitHub documentation
├── src/
│   ├── main.ml
│   └── minidoc/
│       ├── analyzer.ml
│       ├── app.ml
│       ├── config.ml
│       ├── doc_comments.ml
│       ├── graph.ml
│       ├── loader.ml
│       ├── metrics.ml
│       ├── model.ml
│       ├── ordering.ml
│       ├── render_html.ml
│       ├── render_markdown.ml
│       └── util.ml
├── tests/
│   ├── runtests.ml
│   └── fixtures/project/
├── build.ps1
├── build.sh
├── minidoc.toml              # Configuration used for dogfooding
└── minidoc.toml.example
```

All production code and tests are MiniLang source. The build scripts only invoke the MiniLang compiler and launch the resulting test executable.

## Testing

Run the complete Windows build and test pipeline with:

```powershell
.\build.ps1
```

The MiniLang test suite covers:

- path, JSON, and HTML escaping helpers;
- documentation comment and tag parsing;
- project-manifest and MiniDoc configuration merging;
- source discovery, reachability, and compile-time definitions;
- function, type, enum, field, and parameter extraction;
- aliased call resolution and interface implementation edges;
- HTML, repository Markdown, and GitHub Wiki rendering;
- generator version, timestamp, and responsive long-label card rendering;
- configurable project introductions, home-page metrics, and contained navigation-card markup;
- internal symbol filtering and safe HTML output;
- LOC, cyclomatic complexity, cognitive complexity, Halstead, duplication, maintainability, and documentation coverage;
- case-insensitive alphabetical model, navigation, metrics, and manifest ordering;
- SVG graph files, search index, and output manifests;
- deterministic regeneration from identical input.
- missing-license-header diagnostics and strict warning handling.

The fixture project itself contains packages, imports, conditional code, interfaces, structs, methods, an enum, an orphan module, structured comments, an internal function, known decision complexity, and a duplicate-code pair.

See [CONTRIBUTING.md](CONTRIBUTING.md) for development conventions and self-documentation instructions. User-visible changes are summarized in the [changelog](CHANGELOG.md).

## Current limitations

- Call graphs are static approximations. Calls through arbitrary values, callbacks, reflection-like patterns, and some instance receivers cannot be resolved exactly.
- `@see` values are displayed but are not yet validated or converted into symbol links.
- Markdown in long descriptions supports paragraphs, headings, unordered lists, and fenced code in HTML output; it is not a complete CommonMark implementation.
- Graph layout is deterministic and dependency-free, but intentionally simple. Very large graphs should be filtered or capped.
- Directory-link and junction behavior depends on the filesystem implementation exposed by the MiniLang standard library; linked source trees should be excluded explicitly when necessary.
- Duplicate detection currently finds exact token-normalized line windows; it does not identify renamed or structurally similar clones.
- Metric thresholds and the six-line clone window are not configurable in `0.3.0`.
- Incremental model caching, API compatibility reports, theme selection, and plugin APIs are not implemented in `0.3.0`.

## Roadmap

- Validate and link `@see` references.
- Add unresolved-reference and package/path consistency diagnostics.
- Add optional DOT and Mermaid graph backends.
- Add stable API snapshots and breaking-change reports.
- Add incremental parsing and rendering for large repositories.
- Add configurable templates and light/dark themes.
- Expand signature-aware overload and instance-call resolution as MiniLang's type information evolves.

## Design principles

- **Grammar parity:** MiniDoc consumes the compiler frontend used by real MiniLang builds.
- **Honest analysis:** inferred and unresolved relationships are labelled as such.
- **One model, multiple renderers:** HTML and Markdown share symbol identities and diagnostics.
- **Offline by default:** generation and browsing require no hosted service.
- **Deterministic output:** unchanged input produces unchanged documentation files.
- **Safe presentation:** source text is escaped before entering generated HTML or SVG.
- **Dogfooding:** MiniDoc, including its tests, is implemented in MiniLang.

## License

MiniDoc source files are licensed under the [Apache License 2.0](LICENSE).
