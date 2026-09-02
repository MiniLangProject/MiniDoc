# `src/minidoc/model.ml`

[Home](README.md) · [Files](Files.md)

Defines the format-independent data model shared by every MiniDoc stage.

Package: [`minidoc.model`](Package-minidoc-model-1757954315.md)

Reachable from entry: **yes**

## Declarations

- [minidoc.model.CallReference](Type-minidoc-model-callreference-347613116.md) — struct
- [minidoc.model.CloneGroup](Type-minidoc-model-clonegroup-116491919.md) — struct
- [minidoc.model.CloneOccurrence](Type-minidoc-model-cloneoccurrence-662261681.md) — struct
- [minidoc.model.Config](Type-minidoc-model-config-2006227981.md) — struct
- [minidoc.model.CoverageMetric](Type-minidoc-model-coveragemetric-1686880781.md) — struct
<a id="function-function-minidoc-model-defaultconfig-function-defaultconfig-src-minidoc-model-ml-878829745"></a>
### defaultConfig

```ml
function defaultConfig()
```

Creates a configuration populated with safe default values.


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/model.ml#L320)

- [minidoc.model.Diagnostic](Type-minidoc-model-diagnostic-285652516.md) — struct
- [minidoc.model.DocBlock](Type-minidoc-model-docblock-1745261956.md) — struct
- [minidoc.model.DocTag](Type-minidoc-model-doctag-813866201.md) — struct
- [minidoc.model.DocumentationCoverage](Type-minidoc-model-documentationcoverage-2076077517.md) — struct
<a id="function-function-minidoc-model-emptydocblock-function-emptydocblock-src-minidoc-model-ml-1867502199"></a>
### emptyDocBlock

```ml
function emptyDocBlock()
```

Creates an empty documentation block.


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/model.ml#L360)

<a id="function-function-minidoc-model-emptyhalsteadmetrics-function-emptyhalsteadmetrics-src-minidoc-model-ml-480079767"></a>
### emptyHalsteadMetrics

```ml
function emptyHalsteadMetrics()
```

Creates an empty Halstead metric result.


**Since:** `0.2.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/model.ml#L386)

<a id="function-function-minidoc-model-emptyproject-function-emptyproject-config-root-dir-src-minidoc-model-ml-510474277"></a>
### emptyProject

```ml
function emptyProject(config, root_dir)
```

Creates an empty project model for a configuration and root directory.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `config` | `dynamic` | — | Effective MiniDoc configuration. |
| `root_dir` | `dynamic` | — | Absolute project root directory. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/model.ml#L380)

<a id="function-function-minidoc-model-emptyprojectmetrics-function-emptyprojectmetrics-src-minidoc-model-ml-496127141"></a>
### emptyProjectMetrics

```ml
function emptyProjectMetrics()
```

Creates an empty aggregate project metric result.


**Since:** `0.2.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/model.ml#L392)

- [minidoc.model.FileDoc](Type-minidoc-model-filedoc-1009751833.md) — struct
- [minidoc.model.FileMetrics](Type-minidoc-model-filemetrics-548638530.md) — struct
- [minidoc.model.FunctionMetrics](Type-minidoc-model-functionmetrics-1024096496.md) — struct
- [minidoc.model.HalsteadMetrics](Type-minidoc-model-halsteadmetrics-1327840500.md) — struct
- [minidoc.model.ImportDoc](Type-minidoc-model-importdoc-1316762272.md) — struct
<a id="function-function-minidoc-model-newdiagnostic-function-newdiagnostic-severity-code-file-path-line-column-message-src-minidoc-model-ml-1480640064"></a>
### newDiagnostic

```ml
function newDiagnostic(severity, code, file_path, line, column, message)
```

Creates a source diagnostic.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `severity` | `dynamic` | — | Diagnostic severity such as warning or error. |
| `code` | `dynamic` | — | Stable MiniDoc diagnostic code. |
| `file_path` | `dynamic` | — | Source file associated with the diagnostic. |
| `line` | `dynamic` | — | One-based source line. |
| `column` | `dynamic` | — | One-based source column. |
| `message` | `dynamic` | — | Human-readable diagnostic message. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/model.ml#L372)

- [minidoc.model.ParameterDoc](Type-minidoc-model-parameterdoc-1619648880.md) — struct
- [minidoc.model.ProjectDoc](Type-minidoc-model-projectdoc-1424932466.md) — struct
- [minidoc.model.ProjectMetrics](Type-minidoc-model-projectmetrics-1860348849.md) — struct
- [minidoc.model.RelationDoc](Type-minidoc-model-relationdoc-1879623819.md) — struct
- [minidoc.model.SymbolDoc](Type-minidoc-model-symboldoc-864430915.md) — struct
