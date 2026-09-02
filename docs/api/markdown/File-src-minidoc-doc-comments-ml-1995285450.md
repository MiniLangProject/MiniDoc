# `src/minidoc/doc_comments.ml`

[Home](README.md) · [Files](Files.md)

Parses MiniDoc line comments, block comments, file comments, and tags.

Package: [`minidoc.doc_comments`](Package-minidoc-doc-comments-1806526671.md)

Reachable from entry: **yes**

## Imports

- `minidoc/model.ml` as `model` → [src/minidoc/model.ml](File-src-minidoc-model-ml-438170230.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/string.ml` as `strings` → [../MiniLangCompilerML/std/string.ml](File-minilangcompilerml-std-string-ml-1722707944.md)

## Declarations

<a id="function-function-minidoc-doc-comments-cleanblockline-function-cleanblockline-value-src-minidoc-doc-comments-ml-57678238"></a>
### _cleanBlockLine

```ml
function _cleanBlockLine(value)
```

Performs the '_cleanBlockLine' step in MiniDoc's documentation-comment parser.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L30)

<a id="function-function-minidoc-doc-comments-finishpending-function-finishpending-docs-pending-kind-pending-start-pending-end-pending-start-line-pending-end-line-pending-lines-src-minidoc-doc-comments-ml-97374425"></a>
### _finishPending

```ml
function _finishPending(docs, pending_kind, pending_start, pending_end, pending_start_line, pending_end_line, pending_lines)
```

Performs the '_finishPending' step in MiniDoc's documentation-comment parser.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `docs` | `dynamic` | — |  |
| `pending_kind` | `dynamic` | — |  |
| `pending_start` | `dynamic` | — |  |
| `pending_end` | `dynamic` | — |  |
| `pending_start_line` | `dynamic` | — |  |
| `pending_end_line` | `dynamic` | — |  |
| `pending_lines` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L126)

<a id="function-function-minidoc-doc-comments-firstword-function-firstword-value-src-minidoc-doc-comments-ml-523093244"></a>
### _firstWord

```ml
function _firstWord(value)
```

Performs the '_firstWord' step in MiniDoc's documentation-comment parser.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L42)

<a id="function-function-minidoc-doc-comments-parseblock-function-parseblock-target-kind-start-pos-end-pos-start-line-end-line-raw-lines-src-minidoc-doc-comments-ml-46187865"></a>
### _parseBlock

```ml
function _parseBlock(target_kind, start_pos, end_pos, start_line, end_line, raw_lines)
```

Performs the '_parseBlock' step in MiniDoc's documentation-comment parser.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `target_kind` | `dynamic` | — |  |
| `start_pos` | `dynamic` | — |  |
| `end_pos` | `dynamic` | — |  |
| `start_line` | `dynamic` | — |  |
| `end_line` | `dynamic` | — |  |
| `raw_lines` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L81)

<a id="function-function-minidoc-doc-comments-striponespace-function-striponespace-value-src-minidoc-doc-comments-ml-2032218004"></a>
### _stripOneSpace

```ml
function _stripOneSpace(value)
```

Performs the '_stripOneSpace' step in MiniDoc's documentation-comment parser.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L21)

<a id="function-function-minidoc-doc-comments-summaryanddetails-function-summaryanddetails-body-src-minidoc-doc-comments-ml-726081093"></a>
### _summaryAndDetails

```ml
function _summaryAndDetails(body)
```

Performs the '_summaryAndDetails' step in MiniDoc's documentation-comment parser.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L57)

<a id="function-function-minidoc-doc-comments-documentationbefore-function-documentationbefore-docs-source-position-src-minidoc-doc-comments-ml-2090428024"></a>
### documentationBefore

```ml
function documentationBefore(docs, source, position)
```

Finds and consumes the declaration documentation immediately before a source position.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `docs` | `dynamic` | — | Documentation blocks returned by `scan`. |
| `source` | `dynamic` | — | Original MiniLang source text. |
| `position` | `dynamic` | — | Declaration start offset. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L288)

<a id="function-function-minidoc-doc-comments-filedocumentation-function-filedocumentation-docs-src-minidoc-doc-comments-ml-859326424"></a>
### fileDocumentation

```ml
function fileDocumentation(docs)
```

Combines all file-level documentation blocks into one document.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `docs` | `dynamic` | — | Documentation blocks returned by `scan`. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L256)

<a id="function-function-minidoc-doc-comments-hastag-function-hastag-doc-name-src-minidoc-doc-comments-ml-702183168"></a>
### hasTag

```ml
function hasTag(doc, name)
```

Reports whether a parsed documentation block contains a named tag.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc` | `dynamic` | — | Parsed documentation block. |
| `name` | `dynamic` | — | Tag name without the at sign. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L324)

<a id="function-function-minidoc-doc-comments-scan-function-scan-source-src-minidoc-doc-comments-ml-935505990"></a>
### scan

```ml
function scan(source)
```

Scan documentation comments at the beginning of source lines. `///` is the explicit form; ordinary leading `//` comments are accepted for compatibility with established MiniLang projects. Markers inside strings remain ignored. Scans source text and returns all MiniDoc documentation blocks.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — | MiniLang source text to scan. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L137)

<a id="function-function-minidoc-doc-comments-tagtext-function-tagtext-doc-name-key-src-minidoc-doc-comments-ml-458302547"></a>
### tagText

```ml
function tagText(doc, name, key)
```

Finds the text of a named documentation tag and optional key.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc` | `dynamic` | — | Parsed documentation block. |
| `name` | `dynamic` | — | Tag name without the at sign. |
| `key` | `dynamic` | — | Optional key, such as a parameter name. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/doc_comments.ml#L310)
