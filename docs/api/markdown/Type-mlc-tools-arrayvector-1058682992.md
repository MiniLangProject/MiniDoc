# `mlc.tools.ArrayVector`

[Home](README.md) · [Source file](File-minilangcompilerml-mlc-tools-ml-978540687.md)

<a id="struct-struct-mlc-tools-arrayvector-struct-arrayvector-minilangcompilerml-mlc-tools-ml-1505701150"></a>
## ArrayVector

```ml
struct ArrayVector
```

Capacity-backed mutable sequence for compiler-internal hot paths.  MiniLang arrays have exact length, so repeatedly doing `items = items + [value]` copies the complete prefix.  ArrayVector grows geometrically and is materialized only at API boundaries.


Source: `../MiniLangCompilerML/mlc/tools.ml:63`

## Members

<a id="field-field-mlc-tools-arrayvector-cap-cap-minilangcompilerml-mlc-tools-ml-168767674"></a>
### cap

```ml
cap
```


Source: `../MiniLangCompilerML/mlc/tools.ml:66`

<a id="field-field-mlc-tools-arrayvector-data-data-minilangcompilerml-mlc-tools-ml-2107993586"></a>
### data

```ml
data
```


Source: `../MiniLangCompilerML/mlc/tools.ml:64`

<a id="field-field-mlc-tools-arrayvector-size-size-minilangcompilerml-mlc-tools-ml-452993308"></a>
### size

```ml
size
```


Source: `../MiniLangCompilerML/mlc/tools.ml:65`
