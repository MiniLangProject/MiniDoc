# `src/minidoc/config.ml`

[Home](README.md) · [Files](Files.md)

Resolves MiniLang manifests, MiniDoc TOML files, defaults, and CLI overrides.

Package: [`minidoc.config`](Package-minidoc-config-622853416.md)

Reachable from entry: **yes**

## Imports

- `minidoc/model.ml` as `model` → [src/minidoc/model.ml](File-src-minidoc-model-ml-438170230.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `std/fs.ml` as `fs` → `../MiniLangCompilerML/std/fs.ml` — external dependency
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency

## Declarations

<a id="function-function-minidoc-config-absoluteitems-function-absoluteitems-items-base-src-minidoc-config-ml-2103852774"></a>
### _absoluteItems

```ml
function _absoluteItems(items, base)
```

Performs the '_absoluteItems' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `items` | `dynamic` | — |  |
| `base` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L174)

<a id="function-function-minidoc-config-applycli-function-applycli-cfg-args-src-minidoc-config-ml-1158403242"></a>
### _applyCli

```ml
function _applyCli(cfg, args)
```

Performs the '_applyCli' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — |  |
| `args` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L348)

<a id="function-function-minidoc-config-applyformats-function-applyformats-cfg-raw-src-minidoc-config-ml-1993873735"></a>
### _applyFormats

```ml
function _applyFormats(cfg, raw)
```

Performs the '_applyFormats' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — |  |
| `raw` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L313)

<a id="function-function-minidoc-config-applygraphselection-function-applygraphselection-cfg-raw-src-minidoc-config-ml-1585515829"></a>
### _applyGraphSelection

```ml
function _applyGraphSelection(cfg, raw)
```

Performs the '_applyGraphSelection' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — |  |
| `raw` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L330)

<a id="function-function-minidoc-config-applyminidoc-function-applyminidoc-cfg-path-src-minidoc-config-ml-2010845010"></a>
### _applyMiniDoc

```ml
function _applyMiniDoc(cfg, path)
```

Performs the '_applyMiniDoc' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L234)

<a id="function-function-minidoc-config-applyproject-function-applyproject-cfg-path-src-minidoc-config-ml-943352422"></a>
### _applyProject

```ml
function _applyProject(cfg, path)
```

Performs the '_applyProject' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cfg` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L200)

<a id="function-function-minidoc-config-argvalue-function-argvalue-args-names-src-minidoc-config-ml-1852564532"></a>
### _argValue

```ml
function _argValue(args, names)
```

Performs the '_argValue' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `args` | `dynamic` | — |  |
| `names` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L303)

<a id="function-function-minidoc-config-boolean-function-boolean-value-src-minidoc-config-ml-1445243942"></a>
### _boolean

```ml
function _boolean(value)
```

Performs the '_boolean' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L88)

<a id="function-function-minidoc-config-integer-function-integer-value-src-minidoc-config-ml-85459038"></a>
### _integer

```ml
function _integer(value)
```

Performs the '_integer' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L97)

<a id="function-function-minidoc-config-manifestfromconfig-function-manifestfromconfig-path-src-minidoc-config-ml-1230892800"></a>
### _manifestFromConfig

```ml
function _manifestFromConfig(path)
```

Performs the '_manifestFromConfig' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L185)

<a id="function-function-minidoc-config-rowarray-function-rowarray-row-path-src-minidoc-config-ml-1448032416"></a>
### _rowArray

```ml
function _rowArray(row, path)
```

Performs the '_rowArray' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `row` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L150)

<a id="function-function-minidoc-config-rowbool-function-rowbool-row-path-src-minidoc-config-ml-419549900"></a>
### _rowBool

```ml
function _rowBool(row, path)
```

Performs the '_rowBool' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `row` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L158)

<a id="function-function-minidoc-config-rowint-function-rowint-row-path-src-minidoc-config-ml-1823284844"></a>
### _rowInt

```ml
function _rowInt(row, path)
```

Performs the '_rowInt' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `row` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L166)

<a id="function-function-minidoc-config-rows-function-rows-path-src-minidoc-config-ml-689091660"></a>
### _rows

```ml
function _rows(path)
```

Performs the '_rows' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L119)

<a id="function-function-minidoc-config-rowstring-function-rowstring-row-path-src-minidoc-config-ml-1029073784"></a>
### _rowString

```ml
function _rowString(row, path)
```

Performs the '_rowString' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `row` | `dynamic` | — |  |
| `path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L142)

<a id="function-function-minidoc-config-stringarray-function-stringarray-value-src-minidoc-config-ml-293563870"></a>
### _stringArray

```ml
function _stringArray(value)
```

Performs the '_stringArray' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L44)

<a id="function-function-minidoc-config-unquote-function-unquote-value-src-minidoc-config-ml-1426627506"></a>
### _unquote

```ml
function _unquote(value)
```

Performs the '_unquote' step in MiniDoc's configuration pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L31)

<a id="function-function-minidoc-config-load-function-load-args-src-minidoc-config-ml-465999990"></a>
### load

```ml
function load(args)
```

Loads and validates the effective MiniDoc configuration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `args` | `dynamic` | — | Command-line arguments that select inputs and override settings. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/config.ml#L421)

- [minidoc.config.TomlRow](Type-minidoc-config-tomlrow-1332474570.md) — struct
