# `src/minidoc/render_markdown.ml`

[Home](README.md) · [Files](Files.md)

Generates repository- and wiki-compatible Markdown documentation trees.

Package: [`minidoc.render_markdown`](Package-minidoc-render-markdown-318513754.md)

Reachable from entry: **yes**

## Imports

- `minidoc/doc_comments.ml` as `comments` → [src/minidoc/doc_comments.ml](File-src-minidoc-doc-comments-ml-1995285450.md)
- `minidoc/graph.ml` as `graph` → [src/minidoc/graph.ml](File-src-minidoc-graph-ml-29661697.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency
- `std/string_builder.ml` as `builders` → `../MiniLangCompilerML/std/string_builder.ml` — external dependency

## Declarations

<a id="function-function-minidoc-render-markdown-appendsymbol-function-appendsymbol-writer-project-doc-symbol-heading-level-src-minidoc-render-markdown-ml-173001445"></a>
### _appendSymbol

```ml
function _appendSymbol(writer, project, doc_symbol, heading_level)
```

Performs the '_appendSymbol' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `writer` | `dynamic` | — |  |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |
| `heading_level` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L237)

<a id="function-function-minidoc-render-markdown-appendtagsections-function-appendtagsections-writer-doc-symbol-src-minidoc-render-markdown-ml-1272647537"></a>
### _appendTagSections

```ml
function _appendTagSections(writer, doc_symbol)
```

Performs the '_appendTagSections' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `writer` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L130)

<a id="function-function-minidoc-render-markdown-dependencyreferencecount-function-dependencyreferencecount-project-dependency-id-src-minidoc-render-markdown-ml-648139245"></a>
### _dependencyReferenceCount

```ml
function _dependencyReferenceCount(project, dependency_id)
```

Counts project-owned files importing one dependency file.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `dependency_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L555)

<a id="function-function-minidoc-render-markdown-filebyid-function-filebyid-project-id-src-minidoc-render-markdown-ml-579038907"></a>
### _fileById

```ml
function _fileById(project, id)
```

Performs the '_fileById' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L54)

<a id="function-function-minidoc-render-markdown-filepage-function-filepage-file-src-minidoc-render-markdown-ml-589252103"></a>
### _filePage

```ml
function _filePage(file)
```

Performs the '_filePage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L88)

<a id="function-function-minidoc-render-markdown-filevisible-function-filevisible-project-file-src-minidoc-render-markdown-ml-2065479994"></a>
### _fileVisible

```ml
function _fileVisible(project, file)
```

Returns whether a source file should receive full documentation pages.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L23)

<a id="function-function-minidoc-render-markdown-graphenabled-function-graphenabled-project-relation-kind-configured-src-minidoc-render-markdown-ml-1992356813"></a>
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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L74)

<a id="function-function-minidoc-render-markdown-hasdependencies-function-hasdependencies-project-src-minidoc-render-markdown-ml-386212480"></a>
### _hasDependencies

```ml
function _hasDependencies(project)
```

Reports whether imported source dependencies are present.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L64)

<a id="function-function-minidoc-render-markdown-homename-function-homename-project-src-minidoc-render-markdown-ml-1694838250"></a>
### _homeName

```ml
function _homeName(project)
```

Performs the '_homeName' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L727)

<a id="function-function-minidoc-render-markdown-indentedcode-function-indentedcode-text-src-minidoc-render-markdown-ml-511409356"></a>
### _indentedCode

```ml
function _indentedCode(text)
```

Performs the '_indentedCode' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L625)

<a id="function-function-minidoc-render-markdown-istype-function-istype-doc-symbol-src-minidoc-render-markdown-ml-1542253352"></a>
### _isType

```ml
function _isType(doc_symbol)
```

Performs the '_isType' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L38)

<a id="function-function-minidoc-render-markdown-ownertype-function-ownertype-project-doc-symbol-src-minidoc-render-markdown-ml-2082832311"></a>
### _ownerType

```ml
function _ownerType(project, doc_symbol)
```

Performs the '_ownerType' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L106)

<a id="function-function-minidoc-render-markdown-packagepage-function-packagepage-name-src-minidoc-render-markdown-ml-282590802"></a>
### _packagePage

```ml
function _packagePage(name)
```

Performs the '_packagePage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L100)

<a id="function-function-minidoc-render-markdown-packages-function-packages-project-src-minidoc-render-markdown-ml-204965004"></a>
### _packages

```ml
function _packages(project)
```

Performs the '_packages' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L278)

<a id="function-function-minidoc-render-markdown-projectdescription-function-projectdescription-project-src-minidoc-render-markdown-ml-1404482280"></a>
### _projectDescription

```ml
function _projectDescription(project)
```

Performs the '_projectDescription' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L292)

<a id="function-function-minidoc-render-markdown-renderdependencies-function-renderdependencies-project-src-minidoc-render-markdown-ml-1169613352"></a>
### _renderDependencies

```ml
function _renderDependencies(project)
```

Renders imported source dependencies without expanding their API pages.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L571)

<a id="function-function-minidoc-render-markdown-renderdiagnostics-function-renderdiagnostics-project-src-minidoc-render-markdown-ml-478275432"></a>
### _renderDiagnostics

```ml
function _renderDiagnostics(project)
```

Performs the '_renderDiagnostics' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L611)

<a id="function-function-minidoc-render-markdown-renderfile-function-renderfile-project-file-src-minidoc-render-markdown-ml-1369235800"></a>
### _renderFile

```ml
function _renderFile(project, file)
```

Performs the '_renderFile' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L508)

<a id="function-function-minidoc-render-markdown-renderfiles-function-renderfiles-project-src-minidoc-render-markdown-ml-234256500"></a>
### _renderFiles

```ml
function _renderFiles(project)
```

Performs the '_renderFiles' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L347)

<a id="function-function-minidoc-render-markdown-rendergraphpage-function-rendergraphpage-project-title-image-name-description-src-minidoc-render-markdown-ml-1268984211"></a>
### _renderGraphPage

```ml
function _renderGraphPage(project, title, image_name, description)
```

Performs the '_renderGraphPage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `title` | `dynamic` | — |  |
| `image_name` | `dynamic` | — |  |
| `description` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L756)

<a id="function-function-minidoc-render-markdown-renderhome-function-renderhome-project-src-minidoc-render-markdown-ml-1392245616"></a>
### _renderHome

```ml
function _renderHome(project)
```

Performs the '_renderHome' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L299)

<a id="function-function-minidoc-render-markdown-rendermetrics-function-rendermetrics-project-src-minidoc-render-markdown-ml-1897863144"></a>
### _renderMetrics

```ml
function _renderMetrics(project)
```

Performs the '_renderMetrics' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L638)

<a id="function-function-minidoc-render-markdown-renderpackage-function-renderpackage-project-package-name-src-minidoc-render-markdown-ml-1076586018"></a>
### _renderPackage

```ml
function _renderPackage(project, package_name)
```

Performs the '_renderPackage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `package_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L479)

<a id="function-function-minidoc-render-markdown-renderpackagesindex-function-renderpackagesindex-project-src-minidoc-render-markdown-ml-593340696"></a>
### _renderPackagesIndex

```ml
function _renderPackagesIndex(project)
```

Performs the '_renderPackagesIndex' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L465)

<a id="function-function-minidoc-render-markdown-rendersidebar-function-rendersidebar-project-src-minidoc-render-markdown-ml-197078972"></a>
### _renderSidebar

```ml
function _renderSidebar(project)
```

Performs the '_renderSidebar' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L734)

<a id="function-function-minidoc-render-markdown-rendersymbols-function-rendersymbols-project-src-minidoc-render-markdown-ml-878417144"></a>
### _renderSymbols

```ml
function _renderSymbols(project)
```

Performs the '_renderSymbols' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L367)

<a id="function-function-minidoc-render-markdown-rendertests-function-rendertests-project-src-minidoc-render-markdown-ml-274041520"></a>
### _renderTests

```ml
function _renderTests(project)
```

Render the std.test discovery inventory.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L414)

<a id="function-function-minidoc-render-markdown-rendertype-function-rendertype-project-type-symbol-src-minidoc-render-markdown-ml-1036185877"></a>
### _renderType

```ml
function _renderType(project, type_symbol)
```

Performs the '_renderType' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `type_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L590)

<a id="function-function-minidoc-render-markdown-shortrevision-function-shortrevision-value-src-minidoc-render-markdown-ml-1761394760"></a>
### _shortRevision

```ml
function _shortRevision(value)
```

Returns a compact revision label for generated-page metadata.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L81)

<a id="function-function-minidoc-render-markdown-sorttags-function-sorttags-tags-src-minidoc-render-markdown-ml-1028920960"></a>
### _sortTags

```ml
function _sortTags(tags)
```

Performs the '_sortTags' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tags` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L218)

<a id="function-function-minidoc-render-markdown-symbolbyid-function-symbolbyid-project-id-src-minidoc-render-markdown-ml-606316783"></a>
### _symbolById

```ml
function _symbolById(project, id)
```

Performs the '_symbolById' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L44)

<a id="function-function-minidoc-render-markdown-symbolfixturerole-function-symbolfixturerole-doc-symbol-src-minidoc-render-markdown-ml-1692549846"></a>
### _symbolFixtureRole

```ml
function _symbolFixtureRole(doc_symbol)
```

Return the lifecycle role carried by a fixture declaration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L404)

<a id="function-function-minidoc-render-markdown-symbolhastag-function-symbolhastag-doc-symbol-name-src-minidoc-render-markdown-ml-1195790431"></a>
### _symbolHasTag

```ml
function _symbolHasTag(doc_symbol, name)
```

Return whether a documented declaration carries a named tag.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L383)

<a id="function-function-minidoc-render-markdown-symbollink-function-symbollink-project-doc-symbol-src-minidoc-render-markdown-ml-1288607865"></a>
### _symbolLink

```ml
function _symbolLink(project, doc_symbol)
```

Performs the '_symbolLink' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L119)

<a id="function-function-minidoc-render-markdown-symboltagkeys-function-symboltagkeys-doc-symbol-name-src-minidoc-render-markdown-ml-769449549"></a>
### _symbolTagKeys

```ml
function _symbolTagKeys(doc_symbol, name)
```

Collect non-empty tag keys used by test metadata.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L393)

<a id="function-function-minidoc-render-markdown-typepage-function-typepage-doc-symbol-src-minidoc-render-markdown-ml-1928748606"></a>
### _typePage

```ml
function _typePage(doc_symbol)
```

Performs the '_typePage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L94)

<a id="function-function-minidoc-render-markdown-visible-function-visible-project-doc-symbol-src-minidoc-render-markdown-ml-1836227959"></a>
### _visible

```ml
function _visible(project, doc_symbol)
```

Performs the '_visible' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L30)

<a id="function-function-minidoc-render-markdown-writegenerated-function-writegenerated-root-generated-relative-path-content-src-minidoc-render-markdown-ml-1480454785"></a>
### _writeGenerated

```ml
function _writeGenerated(root, generated, relative_path, content)
```

Performs the '_writeGenerated' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `root` | `dynamic` | — |  |
| `generated` | `dynamic` | — |  |
| `relative_path` | `dynamic` | — |  |
| `content` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L767)

<a id="function-function-minidoc-render-markdown-render-function-render-project-src-minidoc-render-markdown-ml-12269608"></a>
### render

```ml
function render(project)
```

Writes the complete Markdown documentation tree and removes stale generated files.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Fully analyzed and ordered project model. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L780)
