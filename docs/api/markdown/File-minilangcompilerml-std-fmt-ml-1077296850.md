# `../MiniLangCompilerML/std/fmt.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.fmt`](Package-std-fmt-186156495.md)

Reachable from entry: **yes**

## Imports

- `std/string_builder.ml` as `sb` → [../MiniLangCompilerML/std/string_builder.ml](File-minilangcompilerml-std-string-builder-ml-553784756.md)

## Declarations

<a id="function-function-std-fmt-center-function-center-s-width-ch-minilangcompilerml-std-fmt-ml-1500864007"></a>
### center

```ml
function center(s, width, ch)
```

centers a string within a given width input: string s, int width, string ch returns: string centered

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `width` | `dynamic` | — |  |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fmt.ml:69`

<a id="function-function-std-fmt-line-function-line-ch-width-minilangcompilerml-std-fmt-ml-690037944"></a>
### line

```ml
function line(ch, width)
```

creates a horizontal line input: string ch, int width returns: string line

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |
| `width` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fmt.ml:138`

<a id="function-function-std-fmt-padleft-function-padleft-s-width-ch-minilangcompilerml-std-fmt-ml-1027820175"></a>
### padLeft

```ml
function padLeft(s, width, ch)
```

pads a string on the left to a desired width input: string s, int width, string ch returns: string padded

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `width` | `dynamic` | — |  |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fmt.ml:37`

<a id="function-function-std-fmt-padright-function-padright-s-width-ch-minilangcompilerml-std-fmt-ml-1911909187"></a>
### padRight

```ml
function padRight(s, width, ch)
```

pads a string on the right to a desired width input: string s, int width, string ch returns: string padded

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |
| `width` | `dynamic` | — |  |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fmt.ml:53`

<a id="function-function-std-fmt-quote-function-quote-s-minilangcompilerml-std-fmt-ml-1663806616"></a>
### quote

```ml
function quote(s)
```

returns a JSON-like quoted string with minimal escaping input: string s returns: string quoted

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `s` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fmt.ml:90`

<a id="function-function-std-fmt-repeat-function-repeat-ch-count-minilangcompilerml-std-fmt-ml-756498739"></a>
### repeat

```ml
function repeat(ch, count)
```

repeats a string `ch` exactly `count` times input: string ch, int count returns: string repeated

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fmt.ml:28`
