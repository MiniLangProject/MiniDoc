# `src/minidoc/render_html.ml`

[Home](README.md) · [Files](Files.md)

Generates the standalone, searchable HTML documentation site.

Package: [`minidoc.render_html`](Package-minidoc-render-html-901266858.md)

Reachable from entry: **yes**

## Imports

- `minidoc/graph.ml` as `graph` → [src/minidoc/graph.ml](File-src-minidoc-graph-ml-29661697.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency
- `std/string_builder.ml` as `builders` → `../MiniLangCompilerML/std/string_builder.ml` — external dependency

## Declarations

<a id="function-function-minidoc-render-html-css-function-css-src-minidoc-render-html-ml-1625528009"></a>
### _css

```ml
function _css()
```

Performs the '_css' step in MiniDoc's HTML renderer.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L745)

<a id="function-function-minidoc-render-html-dependencies-function-dependencies-project-src-minidoc-render-html-ml-1815882224"></a>
### _dependencies

```ml
function _dependencies(project)
```

Renders imported source dependencies without expanding their API pages.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L580)

<a id="function-function-minidoc-render-html-dependencyreferencecount-function-dependencyreferencecount-project-dependency-id-src-minidoc-render-html-ml-2092930733"></a>
### _dependencyReferenceCount

```ml
function _dependencyReferenceCount(project, dependency_id)
```

Counts project-owned files importing one dependency file.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `dependency_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L564)

<a id="function-function-minidoc-render-html-diagnostics-function-diagnostics-project-src-minidoc-render-html-ml-1860874224"></a>
### _diagnostics

```ml
function _diagnostics(project)
```

Performs the '_diagnostics' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L617)

<a id="function-function-minidoc-render-html-file-function-file-project-file-src-minidoc-render-html-ml-490889384"></a>
### _file

```ml
function _file(project, file)
```

Performs the '_file' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L520)

<a id="function-function-minidoc-render-html-filebyid-function-filebyid-project-id-src-minidoc-render-html-ml-435004607"></a>
### _fileById

```ml
function _fileById(project, id)
```

Performs the '_fileById' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L53)

<a id="function-function-minidoc-render-html-filepage-function-filepage-file-src-minidoc-render-html-ml-419870347"></a>
### _filePage

```ml
function _filePage(file)
```

Performs the '_filePage' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L80)

<a id="function-function-minidoc-render-html-files-function-files-project-src-minidoc-render-html-ml-1929023196"></a>
### _files

```ml
function _files(project)
```

Performs the '_files' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L361)

<a id="function-function-minidoc-render-html-filevisible-function-filevisible-project-file-src-minidoc-render-html-ml-1061123602"></a>
### _fileVisible

```ml
function _fileVisible(project, file)
```

Returns whether a source file should receive full documentation pages.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L22)

<a id="function-function-minidoc-render-html-graphenabled-function-graphenabled-project-relation-kind-configured-src-minidoc-render-html-ml-788187789"></a>
### _graphEnabled

```ml
function _graphEnabled(project, relation_kind, configured)
```

Reports whether a configured graph has visible relations.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `relation_kind` | `dynamic` | — |  |
| `configured` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L73)

<a id="function-function-minidoc-render-html-graphpage-function-graphpage-project-title-filename-description-src-minidoc-render-html-ml-1193469419"></a>
### _graphPage

```ml
function _graphPage(project, title, filename, description)
```

Performs the '_graphPage' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `title` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `description` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L718)

<a id="function-function-minidoc-render-html-hasdependencies-function-hasdependencies-project-src-minidoc-render-html-ml-181909412"></a>
### _hasDependencies

```ml
function _hasDependencies(project)
```

Reports whether imported source dependencies are present.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L63)

<a id="function-function-minidoc-render-html-home-function-home-project-src-minidoc-render-html-ml-2034429428"></a>
### _home

```ml
function _home(project)
```

Performs the '_home' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L325)

<a id="function-function-minidoc-render-html-istype-function-istype-doc-symbol-src-minidoc-render-html-ml-1873039548"></a>
### _isType

```ml
function _isType(doc_symbol)
```

Performs the '_isType' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L37)

<a id="function-function-minidoc-render-html-javascript-function-javascript-src-minidoc-render-html-ml-771571021"></a>
### _javascript

```ml
function _javascript()
```

Performs the '_javascript' step in MiniDoc's HTML renderer.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L751)

<a id="function-function-minidoc-render-html-layout-function-layout-project-title-content-src-minidoc-render-html-ml-793745437"></a>
### _layout

```ml
function _layout(project, title, content)
```

Performs the '_layout' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `title` | `dynamic` | — |  |
| `content` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L287)

<a id="function-function-minidoc-render-html-markdownhtml-function-markdownhtml-text-src-minidoc-render-html-ml-1903815168"></a>
### _markdownHtml

```ml
function _markdownHtml(text)
```

Performs the '_markdownHtml' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L122)

<a id="function-function-minidoc-render-html-metrics-function-metrics-project-src-minidoc-render-html-ml-1447599980"></a>
### _metrics

```ml
function _metrics(project)
```

Performs the '_metrics' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L632)

<a id="function-function-minidoc-render-html-ownertype-function-ownertype-project-doc-symbol-src-minidoc-render-html-ml-1808108667"></a>
### _ownerType

```ml
function _ownerType(project, doc_symbol)
```

Performs the '_ownerType' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L98)

<a id="function-function-minidoc-render-html-package-function-package-project-package-name-src-minidoc-render-html-ml-821137262"></a>
### _package

```ml
function _package(project, package_name)
```

Performs the '_package' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `package_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L493)

<a id="function-function-minidoc-render-html-packagepage-function-packagepage-name-src-minidoc-render-html-ml-1754427610"></a>
### _packagePage

```ml
function _packagePage(name)
```

Performs the '_packagePage' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L92)

<a id="function-function-minidoc-render-html-packages-function-packages-project-src-minidoc-render-html-ml-152823440"></a>
### _packages

```ml
function _packages(project)
```

Performs the '_packages' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L304)

<a id="function-function-minidoc-render-html-packagesindex-function-packagesindex-project-src-minidoc-render-html-ml-1876075040"></a>
### _packagesIndex

```ml
function _packagesIndex(project)
```

Performs the '_packagesIndex' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L478)

<a id="function-function-minidoc-render-html-projectdescription-function-projectdescription-project-src-minidoc-render-html-ml-104319708"></a>
### _projectDescription

```ml
function _projectDescription(project)
```

Performs the '_projectDescription' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L318)

<a id="function-function-minidoc-render-html-searchindex-function-searchindex-project-src-minidoc-render-html-ml-1008698196"></a>
### _searchIndex

```ml
function _searchIndex(project)
```

Performs the '_searchIndex' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L726)

<a id="function-function-minidoc-render-html-sorttags-function-sorttags-tags-src-minidoc-render-html-ml-98000292"></a>
### _sortTags

```ml
function _sortTags(tags)
```

Performs the '_sortTags' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tags` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L173)

<a id="function-function-minidoc-render-html-symbolbyid-function-symbolbyid-project-id-src-minidoc-render-html-ml-761027075"></a>
### _symbolById

```ml
function _symbolById(project, id)
```

Performs the '_symbolById' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L43)

<a id="function-function-minidoc-render-html-symbolfixturerole-function-symbolfixturerole-doc-symbol-src-minidoc-render-html-ml-165079326"></a>
### _symbolFixtureRole

```ml
function _symbolFixtureRole(doc_symbol)
```

Return the lifecycle role carried by a fixture declaration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L418)

<a id="function-function-minidoc-render-html-symbolhastag-function-symbolhastag-doc-symbol-name-src-minidoc-render-html-ml-1399844595"></a>
### _symbolHasTag

```ml
function _symbolHasTag(doc_symbol, name)
```

Return whether a documented declaration carries a named tag.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L397)

<a id="function-function-minidoc-render-html-symbolhtml-function-symbolhtml-project-doc-symbol-heading-src-minidoc-render-html-ml-426613973"></a>
### _symbolHtml

```ml
function _symbolHtml(project, doc_symbol, heading)
```

Performs the '_symbolHtml' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |
| `heading` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L192)

<a id="function-function-minidoc-render-html-symbollink-function-symbollink-project-doc-symbol-src-minidoc-render-html-ml-747058409"></a>
### _symbolLink

```ml
function _symbolLink(project, doc_symbol)
```

Performs the '_symbolLink' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L111)

<a id="function-function-minidoc-render-html-symbols-function-symbols-project-src-minidoc-render-html-ml-1501047772"></a>
### _symbols

```ml
function _symbols(project)
```

Performs the '_symbols' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L381)

<a id="function-function-minidoc-render-html-symboltagkeys-function-symboltagkeys-doc-symbol-name-src-minidoc-render-html-ml-1691570861"></a>
### _symbolTagKeys

```ml
function _symbolTagKeys(doc_symbol, name)
```

Collect non-empty tag keys used by test metadata.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L407)

<a id="function-function-minidoc-render-html-tagvalue-function-tagvalue-doc-symbol-name-src-minidoc-render-html-ml-2064001193"></a>
### _tagValue

```ml
function _tagValue(doc_symbol, name)
```

Performs the '_tagValue' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L163)

<a id="function-function-minidoc-render-html-tests-function-tests-project-src-minidoc-render-html-ml-339301540"></a>
### _tests

```ml
function _tests(project)
```

Render the std.test discovery inventory.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L428)

<a id="function-function-minidoc-render-html-type-function-type-project-type-symbol-src-minidoc-render-html-ml-1278264173"></a>
### _type

```ml
function _type(project, type_symbol)
```

Performs the '_type' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `type_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L598)

<a id="function-function-minidoc-render-html-typepage-function-typepage-doc-symbol-src-minidoc-render-html-ml-496705942"></a>
### _typePage

```ml
function _typePage(doc_symbol)
```

Performs the '_typePage' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L86)

<a id="function-function-minidoc-render-html-visible-function-visible-project-doc-symbol-src-minidoc-render-html-ml-419580155"></a>
### _visible

```ml
function _visible(project, doc_symbol)
```

Performs the '_visible' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L29)

<a id="function-function-minidoc-render-html-writegenerated-function-writegenerated-root-generated-relative-path-content-src-minidoc-render-html-ml-979553409"></a>
### _writeGenerated

```ml
function _writeGenerated(root, generated, relative_path, content)
```

Performs the '_writeGenerated' step in MiniDoc's HTML renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `root` | `dynamic` | — |  |
| `generated` | `dynamic` | — |  |
| `relative_path` | `dynamic` | — |  |
| `content` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L757)

<a id="function-function-minidoc-render-html-render-function-render-project-src-minidoc-render-html-ml-961220700"></a>
### render

```ml
function render(project)
```

Writes the complete HTML documentation tree and removes stale generated files.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Fully analyzed and ordered project model. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_html.ml#L766)
