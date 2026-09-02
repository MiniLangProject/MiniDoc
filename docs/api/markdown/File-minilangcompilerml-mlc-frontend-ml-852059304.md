# `../MiniLangCompilerML/mlc/frontend.ml`

[Home](README.md) · [Files](Files.md)

Package: [`mlc.frontend`](Package-mlc-frontend-839095705.md)

Reachable from entry: **yes**

## Imports

- `mlc/minilang_parser.ml` as `parser` → [../MiniLangCompilerML/mlc/minilang_parser.ml](File-minilangcompilerml-mlc-minilang-parser-ml-1826223559.md)
- `mlc/tools.ml` as `t` → [../MiniLangCompilerML/mlc/tools.ml](File-minilangcompilerml-mlc-tools-ml-978540687.md)
- `std/fs.ml` as `fs` → [../MiniLangCompilerML/std/fs.ml](File-minilangcompilerml-std-fs-ml-1549776322.md)

## Declarations

<a id="function-function-mlc-frontend-is-alnum-byte-inline-function-is-alnum-byte-ch-minilangcompilerml-mlc-frontend-ml-115121859"></a>
### _is_alnum_byte

```ml
inline function _is_alnum_byte(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:22`

<a id="function-function-mlc-frontend-is-digit-byte-inline-function-is-digit-byte-ch-minilangcompilerml-mlc-frontend-ml-1501050087"></a>
### _is_digit_byte

```ml
inline function _is_digit_byte(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:18`

<a id="function-function-mlc-frontend-is-space-byte-inline-function-is-space-byte-ch-minilangcompilerml-mlc-frontend-ml-1169332665"></a>
### _is_space_byte

```ml
inline function _is_space_byte(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:14`

<a id="function-function-mlc-frontend-normalize-frontend-error-function-normalize-frontend-error-err-fallback-path-minilangcompilerml-mlc-frontend-ml-862618242"></a>
### _normalize_frontend_error

```ml
function _normalize_frontend_error(err, fallback_path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `err` | `dynamic` | — |  |
| `fallback_path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:26`

<a id="function-function-mlc-frontend-normalize-frontend-errors-function-normalize-frontend-errors-errors-fallback-path-minilangcompilerml-mlc-frontend-ml-1517810500"></a>
### _normalize_frontend_errors

```ml
function _normalize_frontend_errors(errors, fallback_path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `errors` | `dynamic` | — |  |
| `fallback_path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:47`

- [mlc.frontend.FrontendParseResult](Type-mlc-frontend-frontendparseresult-671687677.md) — struct
<a id="function-function-mlc-frontend-load-minilang-frontend-function-load-minilang-frontend-path-minilangcompilerml-mlc-frontend-ml-67613068"></a>
### load_minilang_frontend

```ml
function load_minilang_frontend(path)
```

Report frontend availability; the self-host build links it statically.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:204`

<a id="function-function-mlc-frontend-normalize-code-for-tokenizer-function-normalize-code-for-tokenizer-src-minilangcompilerml-mlc-frontend-ml-1282968749"></a>
### normalize_code_for_tokenizer

```ml
function normalize_code_for_tokenizer(src)
```

Normalize comments/newlines while preserving source offsets for diagnostics. Operate on one capacity-backed UTF-8 byte buffer: the previous character- string builder allocated one managed string and one array slot per source byte, which dominated frontend memory on large self-hosted compilations.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `src` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:67`

<a id="function-function-mlc-frontend-parse-program-function-parse-program-path-minilangcompilerml-mlc-frontend-ml-2141075932"></a>
### parse_program

```ml
function parse_program(path)
```

Load and parse one file, returning syntax failures in the result record.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:186`

<a id="function-function-mlc-frontend-parse-program-keepgoing-function-parse-program-keepgoing-path-max-errors-minilangcompilerml-mlc-frontend-ml-2093224748"></a>
### parse_program_keepgoing

```ml
function parse_program_keepgoing(path, max_errors)
```

Parse one file while collecting up to max_errors syntax diagnostics.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `max_errors` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/frontend.ml:211`
