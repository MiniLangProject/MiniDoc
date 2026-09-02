# `src/minidoc/app.ml`

[Home](README.md) · [Files](Files.md)

Coordinates configuration, analysis, metrics, rendering, and command-line reporting.

Package: [`minidoc.app`](Package-minidoc-app-580960981.md)

Reachable from entry: **yes**

## Imports

- `minidoc/analyzer.ml` as `analyzer` → [src/minidoc/analyzer.ml](File-src-minidoc-analyzer-ml-492085543.md)
- `minidoc/config.ml` as `config` → [src/minidoc/config.ml](File-src-minidoc-config-ml-2001755147.md)
- `minidoc/loader.ml` as `loader` → [src/minidoc/loader.ml](File-src-minidoc-loader-ml-952553188.md)
- `minidoc/metrics.ml` as `metrics` → [src/minidoc/metrics.ml](File-src-minidoc-metrics-ml-1301618694.md)
- `minidoc/ordering.ml` as `ordering` → [src/minidoc/ordering.ml](File-src-minidoc-ordering-ml-677118389.md)
- `minidoc/render_html.ml` as `html` → [src/minidoc/render_html.ml](File-src-minidoc-render-html-ml-1870373141.md)
- `minidoc/render_markdown.ml` as `markdown` → [src/minidoc/render_markdown.ml](File-src-minidoc-render-markdown-ml-212465045.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/process.ml` as `process` → `../MiniLangCompilerML/std/process.ml` — external dependency
- `std/time.ml` as `time` → `../MiniLangCompilerML/std/time.ml` — external dependency

## Declarations

<a id="function-function-minidoc-app-countseverity-function-countseverity-project-severity-src-minidoc-app-ml-309679191"></a>
### _countSeverity

```ml
function _countSeverity(project, severity)
```

Performs the '_countSeverity' step in MiniDoc's application workflow.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `severity` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L137)

<a id="function-function-minidoc-app-generationtimestamp-function-generationtimestamp-cfg-src-minidoc-app-ml-2138938087"></a>
### _generationTimestamp

```ml
function _generationTimestamp(cfg)
```

Select deterministic UTC metadata when SOURCE_DATE_EPOCH is present.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — | Effective configuration controlling timestamp emission. The result is a rendered timestamp, an empty string, or a configuration error. |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L105)

<a id="function-function-minidoc-app-hasarg-function-hasarg-args-value-src-minidoc-app-ml-81945717"></a>
### _hasArg

```ml
function _hasArg(args, value)
```

Performs the '_hasArg' step in MiniDoc's application workflow.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `args` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L117)

<a id="function-function-minidoc-app-printdiagnostics-function-printdiagnostics-project-src-minidoc-app-ml-250768944"></a>
### _printDiagnostics

```ml
function _printDiagnostics(project)
```

Performs the '_printDiagnostics' step in MiniDoc's application workflow.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L127)

<a id="function-function-minidoc-app-sourcedateepochtimestamp-function-sourcedateepochtimestamp-raw-src-minidoc-app-ml-1773202237"></a>
### _sourceDateEpochTimestamp

```ml
function _sourceDateEpochTimestamp(raw)
```

Convert a SOURCE_DATE_EPOCH value into MiniDoc's stable UTC timestamp.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — | Decimal seconds since 1970-01-01T00:00:00Z. The result is a UTC timestamp or an error for malformed/out-of-range input. |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L82)

<a id="function-function-minidoc-app-generate-function-generate-cfg-src-minidoc-app-ml-1058954463"></a>
### generate

```ml
function generate(cfg)
```

Loads, analyzes, measures, and deterministically orders a MiniLang project.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — | Effective MiniDoc configuration. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L149)

<a id="function-function-minidoc-app-printhelp-function-printhelp-src-minidoc-app-ml-210253363"></a>
### printHelp

```ml
function printHelp()
```

Prints command-line usage and all supported options.


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L38)

<a id="function-function-minidoc-app-printversion-function-printversion-src-minidoc-app-ml-1716674331"></a>
### printVersion

```ml
function printVersion()
```

Prints the current MiniDoc version.


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L32)

<a id="function-function-minidoc-app-render-function-render-project-src-minidoc-app-ml-643749544"></a>
### render

```ml
function render(project)
```

Writes every configured output format for an analyzed project.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Fully analyzed project model. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L168)

<a id="function-function-minidoc-app-run-function-run-args-src-minidoc-app-ml-382026988"></a>
### run

```ml
function run(args)
```

Executes the command-line workflow and returns a process exit code.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `args` | `dynamic` | — | Command-line arguments supplied by the host process. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L184)

<a id="constant-constant-minidoc-app-version-const-version-0-4-2-src-minidoc-app-ml-1089430090"></a>
### VERSION

```ml
const VERSION = "0.4.2"
```

Semantic version embedded in generated output and CLI messages.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/app.ml#L28)
