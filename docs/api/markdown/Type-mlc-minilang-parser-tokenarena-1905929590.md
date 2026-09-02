# `mlc.minilang_parser.TokenArena`

[Home](README.md) · [Source file](File-minilangcompilerml-mlc-minilang-parser-ml-1826223559.md)

<a id="struct-struct-mlc-minilang-parser-tokenarena-struct-tokenarena-minilangcompilerml-mlc-minilang-parser-ml-917208380"></a>
## TokenArena

```ml
struct TokenArena
```

Structure-of-arrays token arena. Parser cursors are integer IDs; kinds use one byte and positions/text IDs use packed u32 columns. Identifier, keyword and operator spellings are module-local symbols instead of per-token strings.


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:30`

## Members

<a id="field-field-mlc-minilang-parser-tokenarena-cap-cap-minilangcompilerml-mlc-minilang-parser-ml-1145621652"></a>
### cap

```ml
cap
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:37`

<a id="field-field-mlc-minilang-parser-tokenarena-count-count-minilangcompilerml-mlc-minilang-parser-ml-1056432644"></a>
### count

```ml
count
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:36`

<a id="field-field-mlc-minilang-parser-tokenarena-kinds-kinds-minilangcompilerml-mlc-minilang-parser-ml-260144476"></a>
### kinds

```ml
kinds
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:31`

<a id="field-field-mlc-minilang-parser-tokenarena-positions-positions-minilangcompilerml-mlc-minilang-parser-ml-551959300"></a>
### positions

```ml
positions
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:33`

<a id="field-field-mlc-minilang-parser-tokenarena-text-index-text-index-minilangcompilerml-mlc-minilang-parser-ml-955813044"></a>
### text_index

```ml
text_index
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:35`

<a id="field-field-mlc-minilang-parser-tokenarena-texts-texts-minilangcompilerml-mlc-minilang-parser-ml-1240438716"></a>
### texts

```ml
texts
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:34`

<a id="field-field-mlc-minilang-parser-tokenarena-value-ids-value-ids-minilangcompilerml-mlc-minilang-parser-ml-1083021420"></a>
### value_ids

```ml
value_ids
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:32`
