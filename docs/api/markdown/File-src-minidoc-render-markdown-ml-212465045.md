# `src/minidoc/render_markdown.ml`

[Home](README.md) · [Files](Files.md)

Generates repository- and wiki-compatible Markdown documentation trees.

Package: [`minidoc.render_markdown`](Package-minidoc-render-markdown-318513754.md)

Reachable from entry: **yes**

## Imports

- `minidoc/doc_comments.ml` as `comments` → [src/minidoc/doc_comments.ml](File-src-minidoc-doc-comments-ml-1995285450.md)
- `minidoc/graph.ml` as `graph` → [src/minidoc/graph.ml](File-src-minidoc-graph-ml-29661697.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/string.ml` as `strings` → [../MiniLangCompilerML/std/string.ml](File-minilangcompilerml-std-string-ml-1722707944.md)
- `std/string_builder.ml` as `builders` → [../MiniLangCompilerML/std/string_builder.ml](File-minilangcompilerml-std-string-builder-ml-553784756.md)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L184)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L97)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L45)

<a id="function-function-minidoc-render-markdown-filepage-function-filepage-file-src-minidoc-render-markdown-ml-589252103"></a>
### _filePage

```ml
function _filePage(file)
```

Performs the '_filePage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L55)

<a id="function-function-minidoc-render-markdown-homename-function-homename-project-src-minidoc-render-markdown-ml-1694838250"></a>
### _homeName

```ml
function _homeName(project)
```

Performs the '_homeName' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L534)

<a id="function-function-minidoc-render-markdown-indentedcode-function-indentedcode-text-src-minidoc-render-markdown-ml-511409356"></a>
### _indentedCode

```ml
function _indentedCode(text)
```

Performs the '_indentedCode' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L442)

<a id="function-function-minidoc-render-markdown-istype-function-istype-doc-symbol-src-minidoc-render-markdown-ml-1542253352"></a>
### _isType

```ml
function _isType(doc_symbol)
```

Performs the '_isType' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L29)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L73)

<a id="function-function-minidoc-render-markdown-packagepage-function-packagepage-name-src-minidoc-render-markdown-ml-282590802"></a>
### _packagePage

```ml
function _packagePage(name)
```

Performs the '_packagePage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L67)

<a id="function-function-minidoc-render-markdown-packages-function-packages-project-src-minidoc-render-markdown-ml-204965004"></a>
### _packages

```ml
function _packages(project)
```

Performs the '_packages' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L225)

<a id="function-function-minidoc-render-markdown-projectdescription-function-projectdescription-project-src-minidoc-render-markdown-ml-1404482280"></a>
### _projectDescription

```ml
function _projectDescription(project)
```

Performs the '_projectDescription' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L238)

<a id="function-function-minidoc-render-markdown-renderdiagnostics-function-renderdiagnostics-project-src-minidoc-render-markdown-ml-478275432"></a>
### _renderDiagnostics

```ml
function _renderDiagnostics(project)
```

Performs the '_renderDiagnostics' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L428)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L364)

<a id="function-function-minidoc-render-markdown-renderfiles-function-renderfiles-project-src-minidoc-render-markdown-ml-234256500"></a>
### _renderFiles

```ml
function _renderFiles(project)
```

Performs the '_renderFiles' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L287)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L561)

<a id="function-function-minidoc-render-markdown-renderhome-function-renderhome-project-src-minidoc-render-markdown-ml-1392245616"></a>
### _renderHome

```ml
function _renderHome(project)
```

Performs the '_renderHome' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L245)

<a id="function-function-minidoc-render-markdown-rendermetrics-function-rendermetrics-project-src-minidoc-render-markdown-ml-1897863144"></a>
### _renderMetrics

```ml
function _renderMetrics(project)
```

Performs the '_renderMetrics' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L455)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L336)

<a id="function-function-minidoc-render-markdown-renderpackagesindex-function-renderpackagesindex-project-src-minidoc-render-markdown-ml-593340696"></a>
### _renderPackagesIndex

```ml
function _renderPackagesIndex(project)
```

Performs the '_renderPackagesIndex' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L322)

<a id="function-function-minidoc-render-markdown-rendersidebar-function-rendersidebar-project-src-minidoc-render-markdown-ml-197078972"></a>
### _renderSidebar

```ml
function _renderSidebar(project)
```

Performs the '_renderSidebar' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L541)

<a id="function-function-minidoc-render-markdown-rendersymbols-function-rendersymbols-project-src-minidoc-render-markdown-ml-878417144"></a>
### _renderSymbols

```ml
function _renderSymbols(project)
```

Performs the '_renderSymbols' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L306)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L407)

<a id="function-function-minidoc-render-markdown-sorttags-function-sorttags-tags-src-minidoc-render-markdown-ml-1028920960"></a>
### _sortTags

```ml
function _sortTags(tags)
```

Performs the '_sortTags' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tags` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L165)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L35)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L86)

<a id="function-function-minidoc-render-markdown-typepage-function-typepage-doc-symbol-src-minidoc-render-markdown-ml-1928748606"></a>
### _typePage

```ml
function _typePage(doc_symbol)
```

Performs the '_typePage' step in MiniDoc's Markdown renderer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L61)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L23)

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


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L570)

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

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/render_markdown.ml#L583)
