# `src/minidoc/loader.ml`

[Home](README.md) · [Files](Files.md)

Discovers, parses, validates, and links MiniLang source files and imports.

Package: [`minidoc.loader`](Package-minidoc-loader-169659273.md)

Reachable from entry: **yes**

## Imports

- `minidoc/doc_comments.ml` as `comments` → [src/minidoc/doc_comments.ml](File-src-minidoc-doc-comments-ml-1995285450.md)
- `minidoc/model.ml` as `model` → [src/minidoc/model.ml](File-src-minidoc-model-ml-438170230.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `mlc/frontend.ml` as `frontend` → `../MiniLangCompilerML/mlc/frontend.ml` — external dependency
- `mlc/minilang_parser.ml` as `parser` → `../MiniLangCompilerML/mlc/minilang_parser.ml` — external dependency
- `mlc/tools.ml` as `tools` → `../MiniLangCompilerML/mlc/tools.ml` — external dependency
- `std/fs.ml` as `fs` → `../MiniLangCompilerML/std/fs.ml` — external dependency
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency

## Declarations

<a id="function-function-minidoc-loader-collecttree-function-collecttree-path-root-cfg-files-seen-dirs-src-minidoc-loader-ml-648419853"></a>
### _collectTree

```ml
function _collectTree(path, root, cfg, files, seen_dirs)
```

Performs the '_collectTree' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `root` | `dynamic` | — |  |
| `cfg` | `dynamic` | — |  |
| `files` | `dynamic` | — |  |
| `seen_dirs` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L70)

<a id="function-function-minidoc-loader-diagnostic-function-diagnostic-project-severity-code-path-source-position-message-src-minidoc-loader-ml-1275705122"></a>
### _diagnostic

```ml
function _diagnostic(project, severity, code, path, source, position, message)
```

Performs the '_diagnostic' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `severity` | `dynamic` | — |  |
| `code` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |
| `source` | `dynamic` | — |  |
| `position` | `dynamic` | — |  |
| `message` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L41)

<a id="function-function-minidoc-loader-fileid-function-fileid-root-path-src-minidoc-loader-ml-1546862180"></a>
### _fileId

```ml
function _fileId(root, path)
```

Performs the '_fileId' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `root` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L124)

<a id="function-function-minidoc-loader-findfile-function-findfile-project-path-src-minidoc-loader-ml-1327082201"></a>
### _findFile

```ml
function _findFile(project, path)
```

Performs the '_findFile' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L131)

<a id="function-function-minidoc-loader-haslicenseheader-function-haslicenseheader-source-src-minidoc-loader-ml-1760738160"></a>
### _hasLicenseHeader

```ml
function _hasLicenseHeader(source)
```

Reports whether source starts with a recognized license declaration.

SPDX identifiers are accepted directly. Traditional headers must contain
both a copyright notice and license wording within the first 4 KiB.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — | MiniLang source text to inspect. |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L30)

<a id="function-function-minidoc-loader-isexcluded-function-isexcluded-path-root-cfg-src-minidoc-loader-ml-38851632"></a>
### _isExcluded

```ml
function _isExcluded(path, root, cfg)
```

Performs the '_isExcluded' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `root` | `dynamic` | — |  |
| `cfg` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L51)

<a id="function-function-minidoc-loader-isreachable-function-isreachable-reachable-paths-path-src-minidoc-loader-ml-228567034"></a>
### _isReachable

```ml
function _isReachable(reachable_paths, path)
```

Performs the '_isReachable' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `reachable_paths` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L217)

<a id="function-function-minidoc-loader-loadimports-function-loadimports-project-file-queue-reachable-paths-src-minidoc-loader-ml-1451598457"></a>
### _loadImports

```ml
function _loadImports(project, file, queue, reachable_paths)
```

Performs the '_loadImports' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `queue` | `dynamic` | — |  |
| `reachable_paths` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L232)

<a id="function-function-minidoc-loader-markreachable-function-markreachable-project-path-src-minidoc-loader-ml-663354929"></a>
### _markReachable

```ml
function _markReachable(project, path)
```

Performs the '_markReachable' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L223)

<a id="function-function-minidoc-loader-parsefile-function-parsefile-project-path-reachable-src-minidoc-loader-ml-977724158"></a>
### _parseFile

```ml
function _parseFile(project, path, reachable)
```

Performs the '_parseFile' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |
| `reachable` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L167)

<a id="function-function-minidoc-loader-programpackage-function-programpackage-program-src-minidoc-loader-ml-12223177"></a>
### _programPackage

```ml
function _programPackage(program)
```

Performs the '_programPackage' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `program` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L113)

<a id="function-function-minidoc-loader-resolveimport-function-resolveimport-request-importer-path-cfg-src-minidoc-loader-ml-117527558"></a>
### _resolveImport

```ml
function _resolveImport(request, importer_path, cfg)
```

Performs the '_resolveImport' step in MiniDoc's source-loading pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `request` | `dynamic` | — |  |
| `importer_path` | `dynamic` | — |  |
| `cfg` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L141)

<a id="function-function-minidoc-loader-discover-function-discover-cfg-src-minidoc-loader-ml-1100276789"></a>
### discover

```ml
function discover(cfg)
```

Discovers source files selected by the effective configuration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — | Effective MiniDoc configuration. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L96)

<a id="function-function-minidoc-loader-loadproject-function-loadproject-cfg-src-minidoc-loader-ml-285126779"></a>
### loadProject

```ml
function loadProject(cfg)
```

Loads all selected files and reachable imports into a project model.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — | Effective MiniDoc configuration. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/loader.ml#L271)
