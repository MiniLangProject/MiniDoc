# `src/minidoc/ordering.ml`

[Home](README.md) · [Files](Files.md)

Applies stable alphabetical ordering to all user-visible project collections.

Package: [`minidoc.ordering`](Package-minidoc-ordering-2126525242.md)

Reachable from entry: **yes**

## Imports

- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)

## Declarations

<a id="function-function-minidoc-ordering-entityname-function-entityname-project-id-src-minidoc-ordering-ml-125151227"></a>
### _entityName

```ml
function _entityName(project, id)
```

Performs the '_entityName' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L123)

<a id="function-function-minidoc-ordering-sortclonegroups-function-sortclonegroups-values-src-minidoc-ordering-ml-737876755"></a>
### _sortCloneGroups

```ml
function _sortCloneGroups(values)
```

Performs the '_sortCloneGroups' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L184)

<a id="function-function-minidoc-ordering-sortdiagnostics-function-sortdiagnostics-values-src-minidoc-ordering-ml-1302344115"></a>
### _sortDiagnostics

```ml
function _sortDiagnostics(values)
```

Performs the '_sortDiagnostics' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L112)

<a id="function-function-minidoc-ordering-sortfilemetrics-function-sortfilemetrics-values-src-minidoc-ordering-ml-302193879"></a>
### _sortFileMetrics

```ml
function _sortFileMetrics(values)
```

Performs the '_sortFileMetrics' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L151)

<a id="function-function-minidoc-ordering-sortfiles-function-sortfiles-values-src-minidoc-ordering-ml-851369319"></a>
### _sortFiles

```ml
function _sortFiles(values)
```

Performs the '_sortFiles' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L79)

<a id="function-function-minidoc-ordering-sortfunctionmetrics-function-sortfunctionmetrics-values-src-minidoc-ordering-ml-923823459"></a>
### _sortFunctionMetrics

```ml
function _sortFunctionMetrics(values)
```

Performs the '_sortFunctionMetrics' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L162)

<a id="function-function-minidoc-ordering-sortimports-function-sortimports-values-src-minidoc-ordering-ml-1414675255"></a>
### _sortImports

```ml
function _sortImports(values)
```

Performs the '_sortImports' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L101)

<a id="function-function-minidoc-ordering-sortoccurrences-function-sortoccurrences-values-src-minidoc-ordering-ml-758798339"></a>
### _sortOccurrences

```ml
function _sortOccurrences(values)
```

Performs the '_sortOccurrences' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L173)

<a id="function-function-minidoc-ordering-sortrelations-function-sortrelations-project-values-src-minidoc-ordering-ml-536661100"></a>
### _sortRelations

```ml
function _sortRelations(project, values)
```

Performs the '_sortRelations' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L139)

<a id="function-function-minidoc-ordering-sortsymbols-function-sortsymbols-values-src-minidoc-ordering-ml-2029087899"></a>
### _sortSymbols

```ml
function _sortSymbols(values)
```

Performs the '_sortSymbols' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L90)

<a id="function-function-minidoc-ordering-sortwithkeys-function-sortwithkeys-values-keys-src-minidoc-ordering-ml-94474953"></a>
### _sortWithKeys

```ml
function _sortWithKeys(values, keys)
```

Stable bottom-up merge sort. MiniDoc keeps this local because the current standard-library quicksort computes a non-integer pivot for larger arrays. Performs the '_sortWithKeys' step in MiniDoc's deterministic ordering pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |
| `keys` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L28)

<a id="function-function-minidoc-ordering-apply-function-apply-project-src-minidoc-ordering-ml-520226802"></a>
### apply

```ml
function apply(project)
```

Sorts every user-visible project collection deterministically.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Project model to order in place. |


**Since:** `0.2.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/ordering.ml#L197)

- [minidoc.ordering.SortItem](Type-minidoc-ordering-sortitem-1184334615.md) — struct
