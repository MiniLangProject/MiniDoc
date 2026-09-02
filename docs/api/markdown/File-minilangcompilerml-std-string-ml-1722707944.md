# `../MiniLangCompilerML/std/string.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.string`](Package-std-string-55421397.md)

Reachable from entry: **yes**

## Imports

- `std/string_builder.ml` as `sb` → [../MiniLangCompilerML/std/string_builder.ml](File-minilangcompilerml-std-string-builder-ml-553784756.md)

## Declarations

<a id="function-function-std-string-decodeorempty-function-decodeorempty-b-minilangcompilerml-std-string-ml-245059465"></a>
### _decodeOrEmpty

```ml
function _decodeOrEmpty(b)
```

Decode bytes and normalize failed/void results to an empty string.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:66`

<a id="function-function-std-string-indexofbytes-function-indexofbytes-hay-needle-start-minilangcompilerml-std-string-ml-132316702"></a>
### _indexOfBytes

```ml
function _indexOfBytes(hay, needle, start)
```

Select the optimized forward substring search implementation.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `hay` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:123`

<a id="function-function-std-string-indexofbytesnaive-function-indexofbytesnaive-hay-needle-start-minilangcompilerml-std-string-ml-130440488"></a>
### _indexOfBytesNaive

```ml
function _indexOfBytesNaive(hay, needle, start)
```

Use direct scanning for short byte strings.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `hay` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:77`

<a id="function-function-std-string-iswhitespace-function-iswhitespace-ch-minilangcompilerml-std-string-ml-1817928656"></a>
### _isWhitespace

```ml
function _isWhitespace(ch)
```

checks whether a character is ASCII whitespace input: string ch (1 character) returns: bool isWhitespace

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:39`

<a id="function-function-std-string-iswhitespacebyte-function-iswhitespacebyte-v-minilangcompilerml-std-string-ml-1961909901"></a>
### _isWhitespaceByte

```ml
function _isWhitespaceByte(v)
```

Recognize the ASCII whitespace set used by trim and blank checks.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:45`

<a id="function-function-std-string-lastindexofbytes-function-lastindexofbytes-hay-needle-minilangcompilerml-std-string-ml-961704126"></a>
### _lastIndexOfBytes

```ml
function _lastIndexOfBytes(hay, needle)
```

Search backward for the final byte-string occurrence.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `hay` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:194`

<a id="function-function-std-string-lowerasciibyte-function-lowerasciibyte-v-minilangcompilerml-std-string-ml-355273103"></a>
### _lowerAsciiByte

```ml
function _lowerAsciiByte(v)
```

Lowercase one ASCII byte without locale-dependent behavior.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:50`

<a id="function-function-std-string-upperasciibyte-function-upperasciibyte-v-minilangcompilerml-std-string-ml-2135947685"></a>
### _upperAsciiByte

```ml
function _upperAsciiByte(v)
```

Uppercase one ASCII byte without locale-dependent behavior.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:58`

<a id="function-function-std-string-contains-function-contains-s-needle-minilangcompilerml-std-string-ml-1212926785"></a>
### contains

```ml
function contains(s, needle)
```

checks whether s contains needle input: string s, string needle returns: bool contains

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:310`

<a id="function-function-std-string-countof-function-countof-s-needle-minilangcompilerml-std-string-ml-1533349913"></a>
### countOf

```ml
function countOf(s, needle)
```

counts non-overlapping occurrences of needle in s input: string s, string needle returns: int count

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:518`

<a id="function-function-std-string-endswith-function-endswith-s-suffix-minilangcompilerml-std-string-ml-1608775411"></a>
### endsWith

```ml
function endsWith(s, suffix)
```

checks whether s ends with suffix input: string s, string suffix returns: bool endsWith

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `suffix` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:268`

<a id="function-function-std-string-equalsignorecaseascii-function-equalsignorecaseascii-a-b-minilangcompilerml-std-string-ml-1560390596"></a>
### equalsIgnoreCaseAscii

```ml
function equalsIgnoreCaseAscii(a, b)
```

compares two strings case-insensitively (ASCII) input: string a, string b returns: bool equalsIgnoreCase

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `a` | `dynamic` | — |  |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:630`

<a id="function-function-std-string-indexof-function-indexof-s-needle-start-minilangcompilerml-std-string-ml-1577956401"></a>
### indexOf

```ml
function indexOf(s, needle, start)
```

finds needle in s starting from start input: string s, string needle, int start returns: int index (>=0) or  - 1 if not found

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:277`

<a id="function-function-std-string-isalnumascii-function-isalnumascii-ch-minilangcompilerml-std-string-ml-993141424"></a>
### isAlnumAscii

```ml
function isAlnumAscii(ch)
```

checks whether a character is ASCII alphanumeric input: string ch (1 character) returns: bool isAlnum

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:603`

<a id="function-function-std-string-isalphaascii-function-isalphaascii-ch-minilangcompilerml-std-string-ml-2090719232"></a>
### isAlphaAscii

```ml
function isAlphaAscii(ch)
```

checks whether a character is an ASCII letter (A-Z or a-z) input: string ch (1 character) returns: bool isAlpha

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:588`

<a id="function-function-std-string-isblank-function-isblank-s-minilangcompilerml-std-string-ml-1569354076"></a>
### isBlank

```ml
function isBlank(s)
```

checks whether a string is blank (empty after trim) input: string s returns: bool isBlank

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:350`

<a id="function-function-std-string-isdigitascii-function-isdigitascii-ch-minilangcompilerml-std-string-ml-1455200316"></a>
### isDigitAscii

```ml
function isDigitAscii(ch)
```

checks whether a character is an ASCII digit input: string ch (1 character) returns: bool isDigit

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:573`

<a id="function-function-std-string-isempty-function-isempty-s-minilangcompilerml-std-string-ml-1158434698"></a>
### isEmpty

```ml
function isEmpty(s)
```

checks whether a string is empty input: string s returns: bool isEmpty

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:229`

<a id="function-function-std-string-join-function-join-parts-sep-minilangcompilerml-std-string-ml-935772931"></a>
### join

```ml
function join(parts, sep)
```

joins string parts with a separator input: array<string> parts, string sep returns: string joined

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `parts` | `dynamic` | — |  |
| `sep` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:413`

<a id="function-function-std-string-lastindexof-function-lastindexof-s-needle-minilangcompilerml-std-string-ml-1644950871"></a>
### lastIndexOf

```ml
function lastIndexOf(s, needle)
```

finds the last occurrence of needle in s input: string s, string needle returns: int index (>=0) or  - 1 if not found

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:295`

<a id="function-function-std-string-ltrim-function-ltrim-s-minilangcompilerml-std-string-ml-2122178412"></a>
### ltrim

```ml
function ltrim(s)
```

trims ASCII whitespace on the left input: string s returns: string trimmed

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:323`

<a id="function-function-std-string-removeall-function-removeall-s-needle-minilangcompilerml-std-string-ml-1091679679"></a>
### removeAll

```ml
function removeAll(s, needle)
```

removes all occurrences of needle from s input: string s, string needle returns: string result

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:551`

<a id="function-function-std-string-repeat-function-repeat-s-count-minilangcompilerml-std-string-ml-109120905"></a>
### repeat

```ml
function repeat(s, count)
```

repeats a string count times input: string s, int count returns: string repeated

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:241`

<a id="function-function-std-string-replaceall-function-replaceall-s-needle-repl-minilangcompilerml-std-string-ml-1925749282"></a>
### replaceAll

```ml
function replaceAll(s, needle, repl)
```

replaces all occurrences of needle with repl input: string s, string needle, string repl returns: string replaced

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |
| `repl` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:422`

<a id="function-function-std-string-replacefirst-function-replacefirst-s-needle-repl-minilangcompilerml-std-string-ml-1045792610"></a>
### replaceFirst

```ml
function replaceFirst(s, needle, repl)
```

replaces the first occurrence of needle with repl input: string s, string needle, string repl returns: string replaced

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `needle` | `dynamic` | — |  |
| `repl` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:473`

<a id="function-function-std-string-reverse-function-reverse-s-minilangcompilerml-std-string-ml-1864407300"></a>
### reverse

```ml
function reverse(s)
```

reverses a string input: string s returns: string reversed

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:560`

<a id="function-function-std-string-rtrim-function-rtrim-s-minilangcompilerml-std-string-ml-1422624468"></a>
### rtrim

```ml
function rtrim(s)
```

trims ASCII whitespace on the right input: string s returns: string trimmed

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:332`

<a id="function-function-std-string-split-function-split-s-sep-minilangcompilerml-std-string-ml-1759322516"></a>
### split

```ml
function split(s, sep)
```

splits a string by a separator input: string s, string sep returns: array<string> parts

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `sep` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:359`

<a id="function-function-std-string-startswith-function-startswith-s-prefix-minilangcompilerml-std-string-ml-580632544"></a>
### startsWith

```ml
function startsWith(s, prefix)
```

checks whether s starts with prefix input: string s, string prefix returns: bool startsWith

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:259`

<a id="function-function-std-string-substr-function-substr-s-start-length-minilangcompilerml-std-string-ml-1600889092"></a>
### substr

```ml
function substr(s, start, length)
```

returns a substring of s input: string s, int start, int length returns: string substring

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |
| `length` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:250`

<a id="function-function-std-string-tolowerascii-function-tolowerascii-s-minilangcompilerml-std-string-ml-711701524"></a>
### toLowerAscii

```ml
function toLowerAscii(s)
```

converts a string to lowercase (ASCII) input: string s returns: string lower

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:612`

<a id="function-function-std-string-toupperascii-function-toupperascii-s-minilangcompilerml-std-string-ml-506308924"></a>
### toUpperAscii

```ml
function toUpperAscii(s)
```

converts a string to uppercase (ASCII) input: string s returns: string upper

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:621`

<a id="function-function-std-string-trim-function-trim-s-minilangcompilerml-std-string-ml-1169754748"></a>
### trim

```ml
function trim(s)
```

trims ASCII whitespace on both sides input: string s returns: string trimmed

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string.ml:341`
