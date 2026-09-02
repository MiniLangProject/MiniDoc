# `std.string_builder.StringBuilder`

[Home](README.md) · [Source file](File-minilangcompilerml-std-string-builder-ml-553784756.md)

<a id="struct-struct-std-string-builder-stringbuilder-struct-stringbuilder-minilangcompilerml-std-string-builder-ml-2066715958"></a>
## StringBuilder

```ml
struct StringBuilder
```

Mutable UTF-8 byte builder for append-heavy string construction.


Source: `../MiniLangCompilerML/std/string_builder.ml:38`

## Members

<a id="method-method-std-string-builder-stringbuilder-append-function-append-value-minilangcompilerml-std-string-builder-ml-194639901"></a>
### append

```ml
function append(value)
```

Convert a value with str() and append its textual representation.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string_builder.ml:148`

<a id="method-method-std-string-builder-stringbuilder-appendline-function-appendline-value-minilangcompilerml-std-string-builder-ml-1740018005"></a>
### appendLine

```ml
function appendLine(value)
```

Append a value followed by a newline byte.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string_builder.ml:157`

<a id="method-method-std-string-builder-stringbuilder-appendslice-function-appendslice-s-offset-length-minilangcompilerml-std-string-builder-ml-1385635652"></a>
### appendSlice

```ml
function appendSlice(s, offset, length)
```

Append a clamped byte slice; negative offsets count from the end.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `offset` | `dynamic` | — |  |
| `length` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string_builder.ml:107`

<a id="method-method-std-string-builder-stringbuilder-appendstring-function-appendstring-s-minilangcompilerml-std-string-builder-ml-1548753869"></a>
### appendString

```ml
function appendString(s)
```

Append a string without creating an intermediate concatenation.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string_builder.ml:93`

<a id="field-field-std-string-builder-stringbuilder-buf-buf-minilangcompilerml-std-string-builder-ml-149966580"></a>
### buf

```ml
buf
```


Source: `../MiniLangCompilerML/std/string_builder.ml:39`

<a id="field-field-std-string-builder-stringbuilder-capacity-capacity-minilangcompilerml-std-string-builder-ml-800080132"></a>
### capacity

```ml
capacity
```


Source: `../MiniLangCompilerML/std/string_builder.ml:41`

<a id="method-method-std-string-builder-stringbuilder-clear-function-clear-minilangcompilerml-std-string-builder-ml-1756490872"></a>
### clear

```ml
function clear()
```

Reset the logical length while retaining allocated capacity.


Source: `../MiniLangCompilerML/std/string_builder.ml:66`

<a id="method-method-std-string-builder-stringbuilder-len-function-len-minilangcompilerml-std-string-builder-ml-1233038224"></a>
### len

```ml
function len()
```

Return the number of UTF-8 bytes currently stored.


Source: `../MiniLangCompilerML/std/string_builder.ml:61`

<a id="field-field-std-string-builder-stringbuilder-lenbytes-lenbytes-minilangcompilerml-std-string-builder-ml-1047641908"></a>
### lenBytes

```ml
lenBytes
```


Source: `../MiniLangCompilerML/std/string_builder.ml:40`

<a id="static_method-static-method-std-string-builder-stringbuilder-new-static-function-new-minilangcompilerml-std-string-builder-ml-973231535"></a>
### new

```ml
static function new()
```

Create an empty builder with a practical default capacity.


Source: `../MiniLangCompilerML/std/string_builder.ml:44`

<a id="method-method-std-string-builder-stringbuilder-reserve-function-reserve-extra-minilangcompilerml-std-string-builder-ml-1120571872"></a>
### reserve

```ml
function reserve(extra)
```

Ensure room for at least extra additional bytes.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `extra` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string_builder.ml:71`

<a id="method-method-std-string-builder-stringbuilder-tostring-function-tostring-minilangcompilerml-std-string-builder-ml-205084882"></a>
### toString

```ml
function toString()
```

Materialize exactly the initialized bytes as an immutable string.


Source: `../MiniLangCompilerML/std/string_builder.ml:163`

<a id="static_method-static-method-std-string-builder-stringbuilder-withcapacity-static-function-withcapacity-cap-minilangcompilerml-std-string-builder-ml-1891311333"></a>
### withCapacity

```ml
static function withCapacity(cap)
```

Create an empty builder with at least cap bytes of capacity.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/string_builder.ml:49`
