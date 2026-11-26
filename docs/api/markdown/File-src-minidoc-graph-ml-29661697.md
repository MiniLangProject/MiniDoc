# `src/minidoc/graph.ml`

[Home](README.md) · [Files](Files.md)

Renders deterministic standalone SVG diagrams for static project relations.

Package: [`minidoc.graph`](Package-minidoc-graph-1893588262.md)

Reachable from entry: **yes**

## Imports

- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `mlc/tools.ml` as `tools` → `../MiniLangCompilerML/mlc/tools.ml` — external dependency
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency
- `std/string_builder.ml` as `builders` → `../MiniLangCompilerML/std/string_builder.ml` — external dependency

## Declarations

<a id="function-function-minidoc-graph-addnode-function-addnode-nodes-id-label-kind-maximum-src-minidoc-graph-ml-1721902335"></a>
### _addNode

```ml
function _addNode(nodes, id, label, kind, maximum)
```

Adds a first-seen node without changing its original label, kind, or cap order.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `nodes` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |
| `label` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |
| `maximum` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L127)

<a id="function-function-minidoc-graph-edgekey-function-edgekey-from-id-to-id-src-minidoc-graph-ml-1923725630"></a>
### _edgeKey

```ml
function _edgeKey(from_id, to_id)
```

Encodes a directed edge without delimiter collisions in arbitrary entity ids.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `from_id` | `dynamic` | — |  |
| `to_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L137)

<a id="function-function-minidoc-graph-entityindex-function-entityindex-project-src-minidoc-graph-ml-231866900"></a>
### _entityIndex

```ml
function _entityIndex(project)
```

Indexes each entity once while retaining the original first-match semantics.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L45)

<a id="function-function-minidoc-graph-entityowned-function-entityowned-index-id-src-minidoc-graph-ml-92963944"></a>
### _entityOwned

```ml
function _entityOwned(index, id)
```

Returns whether a graph entity belongs to the documented project.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `index` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L90)

<a id="function-function-minidoc-graph-entitypackage-function-entitypackage-index-id-src-minidoc-graph-ml-1204482208"></a>
### _entityPackage

```ml
function _entityPackage(index, id)
```

Returns the package represented by a file or symbol identifier.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `index` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L78)

<a id="function-function-minidoc-graph-relationvisible-function-relationvisible-project-index-relation-src-minidoc-graph-ml-2127711910"></a>
### _relationVisible

```ml
function _relationVisible(project, index, relation)
```

Returns whether a relation is visible at the configured dependency boundary.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |
| `relation` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L99)

<a id="function-function-minidoc-graph-shortlabel-function-shortlabel-value-src-minidoc-graph-ml-523704082"></a>
### _shortLabel

```ml
function _shortLabel(value)
```

Performs the '_shortLabel' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L143)

<a id="function-function-minidoc-graph-sortnodes-function-sortnodes-nodes-src-minidoc-graph-ml-1625324464"></a>
### _sortNodes

```ml
function _sortNodes(nodes)
```

Performs the '_sortNodes' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `nodes` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L150)

<a id="function-function-minidoc-graph-symbollabel-function-symbollabel-index-id-src-minidoc-graph-ml-1389535104"></a>
### _symbolLabel

```ml
function _symbolLabel(index, id)
```

Returns a symbol label before considering a file label or the literal id.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `index` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L68)

- [minidoc.graph.GraphIndex](Type-minidoc-graph-graphindex-1739520952.md) — struct
- [minidoc.graph.GraphNode](Type-minidoc-graph-graphnode-773174168.md) — struct
- [minidoc.graph.GraphNodes](Type-minidoc-graph-graphnodes-1999256305.md) — struct
<a id="function-function-minidoc-graph-hasrelations-function-hasrelations-project-relation-kind-src-minidoc-graph-ml-1807689357"></a>
### hasRelations

```ml
function hasRelations(project, relation_kind)
```

Reports whether a relation category has at least one visible edge.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Analyzed project containing symbols and relations. |
| `relation_kind` | `dynamic` | — | Relation category to inspect. |


**Since:** `0.4.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L112)

<a id="function-function-minidoc-graph-rendersvg-function-rendersvg-project-relation-kind-title-src-minidoc-graph-ml-1835978035"></a>
### renderSvg

```ml
function renderSvg(project, relation_kind, title)
```

Renders one relation category as a self-contained SVG document.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Analyzed project containing symbols and relations. |
| `relation_kind` | `dynamic` | — | Relation category to include. |
| `title` | `dynamic` | — | Human-readable graph title. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L172)
