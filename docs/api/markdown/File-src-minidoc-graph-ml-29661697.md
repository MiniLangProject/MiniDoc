# `src/minidoc/graph.ml`

[Home](README.md) · [Files](Files.md)

Renders deterministic standalone SVG diagrams for static project relations.

Package: [`minidoc.graph`](Package-minidoc-graph-1893588262.md)

Reachable from entry: **yes**

## Imports

- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency
- `std/string_builder.ml` as `builders` → `../MiniLangCompilerML/std/string_builder.ml` — external dependency

## Declarations

<a id="function-function-minidoc-graph-addnode-function-addnode-nodes-id-label-kind-maximum-src-minidoc-graph-ml-1721902335"></a>
### _addNode

```ml
function _addNode(nodes, id, label, kind, maximum)
```

Performs the '_addNode' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `nodes` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |
| `label` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |
| `maximum` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L123)

<a id="function-function-minidoc-graph-entityowned-function-entityowned-project-id-src-minidoc-graph-ml-830551589"></a>
### _entityOwned

```ml
function _entityOwned(project, id)
```

Returns whether a graph entity belongs to the documented project.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L67)

<a id="function-function-minidoc-graph-entitypackage-function-entitypackage-project-id-src-minidoc-graph-ml-50962349"></a>
### _entityPackage

```ml
function _entityPackage(project, id)
```

Returns the package represented by a file or symbol identifier.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L45)

<a id="function-function-minidoc-graph-hasedge-function-hasedge-relations-from-id-to-id-src-minidoc-graph-ml-1113589831"></a>
### _hasEdge

```ml
function _hasEdge(relations, from_id, to_id)
```

Returns whether an edge has already been added to an aggregated graph.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `relations` | `dynamic` | — |  |
| `from_id` | `dynamic` | — |  |
| `to_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L131)

<a id="function-function-minidoc-graph-nodeindex-function-nodeindex-nodes-id-src-minidoc-graph-ml-1580849361"></a>
### _nodeIndex

```ml
function _nodeIndex(nodes, id)
```

Performs the '_nodeIndex' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `nodes` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L113)

<a id="function-function-minidoc-graph-relationvisible-function-relationvisible-project-relation-src-minidoc-graph-ml-1824775216"></a>
### _relationVisible

```ml
function _relationVisible(project, relation)
```

Returns whether a relation is visible at the configured dependency boundary.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `relation` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L86)

<a id="function-function-minidoc-graph-shortlabel-function-shortlabel-value-src-minidoc-graph-ml-523704082"></a>
### _shortLabel

```ml
function _shortLabel(value)
```

Performs the '_shortLabel' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L141)

<a id="function-function-minidoc-graph-sortnodes-function-sortnodes-nodes-src-minidoc-graph-ml-1625324464"></a>
### _sortNodes

```ml
function _sortNodes(nodes)
```

Performs the '_sortNodes' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `nodes` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L148)

<a id="function-function-minidoc-graph-symbollabel-function-symbollabel-project-id-src-minidoc-graph-ml-931677709"></a>
### _symbolLabel

```ml
function _symbolLabel(project, id)
```

Performs the '_symbolLabel' step in MiniDoc's graph renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L29)

- [minidoc.graph.GraphNode](Type-minidoc-graph-graphnode-773174168.md) — struct
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

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L99)

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

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/graph.ml#L170)
