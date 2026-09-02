# `mlc.minilang_parser.LazyIteratorState`

[Home](README.md) · [Source file](File-minilangcompilerml-mlc-minilang-parser-ml-1826223559.md)

<a id="struct-struct-mlc-minilang-parser-lazyiteratorstate-struct-lazyiteratorstate-minilangcompilerml-mlc-minilang-parser-ml-454368372"></a>
## LazyIteratorState

```ml
struct LazyIteratorState
```

Mutable construction state for a lazy iterator's pull-closure state machine. Integer state IDs keep suspension/resumption explicit and avoid materializing yielded elements in an intermediate array.


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4194`

## Members

<a id="field-field-mlc-minilang-parser-lazyiteratorstate-blocks-blocks-minilangcompilerml-mlc-minilang-parser-ml-235089895"></a>
### blocks

```ml
blocks
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4197`

<a id="field-field-mlc-minilang-parser-lazyiteratorstate-fn-fn-minilangcompilerml-mlc-minilang-parser-ml-1602961199"></a>
### fn

```ml
fn
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4195`

<a id="field-field-mlc-minilang-parser-lazyiteratorstate-globals-declared-globals-declared-minilangcompilerml-mlc-minilang-parser-ml-1774670477"></a>
### globals_declared

```ml
globals_declared
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4199`

<a id="field-field-mlc-minilang-parser-lazyiteratorstate-persistent-persistent-minilangcompilerml-mlc-minilang-parser-ml-1019959429"></a>
### persistent

```ml
persistent
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4198`

<a id="field-field-mlc-minilang-parser-lazyiteratorstate-state-name-state-name-minilangcompilerml-mlc-minilang-parser-ml-1081025489"></a>
### state_name

```ml
state_name
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4196`
