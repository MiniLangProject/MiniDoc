# `src/minidoc/util.ml`

[Home](README.md) · [Files](Files.md)

Provides path, file, escaping, hashing, sorting, and URL helpers used across MiniDoc.

Package: [`minidoc.util`](Package-minidoc-util-679811338.md)

Reachable from entry: **yes**

## Imports

- `std/fs.ml` as `fs` → [../MiniLangCompilerML/std/fs.ml](File-minilangcompilerml-std-fs-ml-1549776322.md)
- `std/io/file.ml` as `fileio` → [../MiniLangCompilerML/std/io/file.ml](File-minilangcompilerml-std-io-file-ml-547940166.md)
- `std/process.ml` as `process` → [../MiniLangCompilerML/std/process.ml](File-minilangcompilerml-std-process-ml-530315852.md)
- `std/string.ml` as `strings` → [../MiniLangCompilerML/std/string.ml](File-minilangcompilerml-std-string-ml-1722707944.md)
- `std/string_builder.ml` as `builders` → [../MiniLangCompilerML/std/string_builder.ml](File-minilangcompilerml-std-string-builder-ml-553784756.md)

## Declarations

<a id="function-function-minidoc-util-stringless-function-stringless-left-right-src-minidoc-util-ml-1708326844"></a>
### _stringLess

```ml
function _stringLess(left, right)
```

Performs the '_stringLess' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L397)

<a id="function-function-minidoc-util-absolutepath-function-absolutepath-path-base-src-minidoc-util-ml-514406695"></a>
### absolutePath

```ml
function absolutePath(path, base)
```

Performs the 'absolutePath' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `base` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L119)

<a id="function-function-minidoc-util-addunique-function-addunique-values-value-src-minidoc-util-ml-1616123664"></a>
### addUnique

```ml
function addUnique(values, value)
```

Performs the 'addUnique' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L462)

<a id="function-function-minidoc-util-alphabeticalless-function-alphabeticalless-left-right-src-minidoc-util-ml-727255026"></a>
### alphabeticalLess

```ml
function alphabeticalLess(left, right)
```

Case-insensitive alphabetical comparison with the original spelling as a deterministic tie-breaker. Performs the 'alphabeticalLess' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L415)

<a id="function-function-minidoc-util-containsstring-function-containsstring-values-value-src-minidoc-util-ml-566265228"></a>
### containsString

```ml
function containsString(values, value)
```

Performs the 'containsString' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L452)

<a id="function-function-minidoc-util-currentdirectory-function-currentdirectory-src-minidoc-util-ml-113802665"></a>
### currentDirectory

```ml
function currentDirectory()
```

Performs the 'currentDirectory' step in MiniDoc's shared utility layer.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L111)

<a id="function-function-minidoc-util-directoryname-function-directoryname-path-src-minidoc-util-ml-1501831564"></a>
### directoryName

```ml
function directoryName(path)
```

Performs the 'directoryName' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L127)

<a id="function-function-minidoc-util-ensuredirectory-function-ensuredirectory-path-src-minidoc-util-ml-1374154082"></a>
### ensureDirectory

```ml
function ensureDirectory(path)
```

Performs the 'ensureDirectory' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L223)

<a id="function-function-minidoc-util-filename-function-filename-path-src-minidoc-util-ml-1336661524"></a>
### fileName

```ml
function fileName(path)
```

Performs the 'fileName' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L138)

<a id="function-function-minidoc-util-hashtext-function-hashtext-value-src-minidoc-util-ml-1635069358"></a>
### hashText

```ml
function hashText(value)
```

Performs the 'hashText' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L299)

<a id="function-function-minidoc-util-htmlescape-function-htmlescape-value-src-minidoc-util-ml-244495214"></a>
### htmlEscape

```ml
function htmlEscape(value)
```

Performs the 'htmlEscape' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L345)

<a id="function-function-minidoc-util-isabsolute-function-isabsolute-path-src-minidoc-util-ml-1214071280"></a>
### isAbsolute

```ml
function isAbsolute(path)
```

Performs the 'isAbsolute' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L30)

<a id="function-function-minidoc-util-isprojectsource-function-isprojectsource-path-entry-source-roots-src-minidoc-util-ml-1301122291"></a>
### isProjectSource

```ml
function isProjectSource(path, entry, source_roots)
```

Reports whether a file belongs to the documented project rather than an imported dependency.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — | Absolute or normalized source-file path. |
| `entry` | `dynamic` | — | Configured project entry path. |
| `source_roots` | `dynamic` | — | Configured roots whose source files belong to the project. |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L176)

<a id="function-function-minidoc-util-issafeurl-function-issafeurl-value-src-minidoc-util-ml-178306030"></a>
### isSafeUrl

```ml
function isSafeUrl(value)
```

Performs the 'isSafeUrl' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L469)

<a id="function-function-minidoc-util-iswhitespacechar-function-iswhitespacechar-ch-src-minidoc-util-ml-1629633848"></a>
### isWhitespaceChar

```ml
function isWhitespaceChar(ch)
```

Performs the 'isWhitespaceChar' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L260)

<a id="function-function-minidoc-util-joinpath-function-joinpath-left-right-src-minidoc-util-ml-984722546"></a>
### joinPath

```ml
function joinPath(left, right)
```

Performs the 'joinPath' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L102)

<a id="function-function-minidoc-util-jsonescape-function-jsonescape-value-src-minidoc-util-ml-1752083326"></a>
### jsonEscape

```ml
function jsonEscape(value)
```

Performs the 'jsonEscape' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L368)

<a id="function-function-minidoc-util-lineandcolumn-function-lineandcolumn-source-position-src-minidoc-util-ml-592355921"></a>
### lineAndColumn

```ml
function lineAndColumn(source, position)
```

Performs the 'lineAndColumn' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `position` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L279)

<a id="function-function-minidoc-util-markdowntableescape-function-markdowntableescape-value-src-minidoc-util-ml-1230576038"></a>
### markdownTableEscape

```ml
function markdownTableEscape(value)
```

Performs the 'markdownTableEscape' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L357)

<a id="function-function-minidoc-util-normalizepath-function-normalizepath-path-src-minidoc-util-ml-912855504"></a>
### normalizePath

```ml
function normalizePath(path)
```

Performs the 'normalizePath' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L39)

<a id="function-function-minidoc-util-onlywhitespace-function-onlywhitespace-source-start-pos-end-pos-src-minidoc-util-ml-1891259271"></a>
### onlyWhitespace

```ml
function onlyWhitespace(source, start_pos, end_pos)
```

Performs the 'onlyWhitespace' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `start_pos` | `dynamic` | — |  |
| `end_pos` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L266)

<a id="function-function-minidoc-util-pathkey-function-pathkey-path-src-minidoc-util-ml-1467472176"></a>
### pathKey

```ml
function pathKey(path)
```

Performs the 'pathKey' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L156)

<a id="function-function-minidoc-util-pathsequal-function-pathsequal-left-right-src-minidoc-util-ml-1148717714"></a>
### pathsEqual

```ml
function pathsEqual(left, right)
```

Performs the 'pathsEqual' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L167)

<a id="function-function-minidoc-util-readtext-function-readtext-path-src-minidoc-util-ml-1933403872"></a>
### readText

```ml
function readText(path)
```

Performs the 'readText' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L251)

<a id="function-function-minidoc-util-relativepath-function-relativepath-base-target-src-minidoc-util-ml-703996981"></a>
### relativePath

```ml
function relativePath(base, target)
```

Performs the 'relativePath' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `base` | `dynamic` | — |  |
| `target` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L189)

<a id="function-function-minidoc-util-replaceslashes-function-replaceslashes-value-src-minidoc-util-ml-1042596854"></a>
### replaceSlashes

```ml
function replaceSlashes(value)
```

Performs the 'replaceSlashes' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L23)

<a id="function-function-minidoc-util-slug-function-slug-value-src-minidoc-util-ml-137599686"></a>
### slug

```ml
function slug(value)
```

Performs the 'slug' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L313)

<a id="function-function-minidoc-util-sortedstrings-function-sortedstrings-values-src-minidoc-util-ml-1938694817"></a>
### sortedStrings

```ml
function sortedStrings(values)
```

Performs the 'sortedStrings' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L426)

<a id="function-function-minidoc-util-sourceurl-function-sourceurl-repository-ref-name-relative-path-line-src-minidoc-util-ml-306910688"></a>
### sourceUrl

```ml
function sourceUrl(repository, ref_name, relative_path, line)
```

Performs the 'sourceUrl' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `repository` | `dynamic` | — |  |
| `ref_name` | `dynamic` | — |  |
| `relative_path` | `dynamic` | — |  |
| `line` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L380)

<a id="function-function-minidoc-util-stableslug-function-stableslug-value-src-minidoc-util-ml-855303090"></a>
### stableSlug

```ml
function stableSlug(value)
```

Performs the 'stableSlug' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L339)

<a id="function-function-minidoc-util-stem-function-stem-path-src-minidoc-util-ml-38274428"></a>
### stem

```ml
function stem(path)
```

Performs the 'stem' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L147)

<a id="function-function-minidoc-util-writetext-function-writetext-path-text-src-minidoc-util-ml-1017090225"></a>
### writeText

```ml
function writeText(path, text)
```

Performs the 'writeText' step in MiniDoc's shared utility layer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `text` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/util.ml#L239)
