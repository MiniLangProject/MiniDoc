# `../MiniLangCompilerML/mlc/tools.ml`

[Home](README.md) · [Files](Files.md)

Package: [`mlc.tools`](Package-mlc-tools-1049496424.md)

Reachable from entry: **yes**

## Imports

- `mlc/constants.ml` as `c` → [../MiniLangCompilerML/mlc/constants.ml](File-minilangcompilerml-mlc-constants-ml-995915741.md)

## Declarations

<a id="function-function-mlc-tools-arr-concat-chunks-balanced-function-arr-concat-chunks-balanced-parts-minilangcompilerml-mlc-tools-ml-42630881"></a>
### _arr_concat_chunks_balanced

```ml
function _arr_concat_chunks_balanced(parts)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `parts` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1085`

<a id="function-function-mlc-tools-arr-copy-prefix-function-arr-copy-prefix-arr-n-minilangcompilerml-mlc-tools-ml-1546734842"></a>
### _arr_copy_prefix

```ml
function _arr_copy_prefix(arr, n)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arr` | `dynamic` | — |  |
| `n` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1002`

<a id="function-function-mlc-tools-arr-fill-function-arr-fill-n-fill-minilangcompilerml-mlc-tools-ml-1567160246"></a>
### _arr_fill

```ml
function _arr_fill(n, fill)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `dynamic` | — |  |
| `fill` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:995`

<a id="function-function-mlc-tools-arr-tail-from-array-function-arr-tail-from-array-arr-cap-minilangcompilerml-mlc-tools-ml-164466168"></a>
### _arr_tail_from_array

```ml
function _arr_tail_from_array(arr, cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arr` | `dynamic` | — |  |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1034`

<a id="function-function-mlc-tools-arr-tail-new-function-arr-tail-new-cap-minilangcompilerml-mlc-tools-ml-1739941357"></a>
### _arr_tail_new

```ml
function _arr_tail_new(cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1028`

<a id="function-function-mlc-tools-arr-tail-to-array-function-arr-tail-to-array-tail-minilangcompilerml-mlc-tools-ml-1218097339"></a>
### _arr_tail_to_array

```ml
function _arr_tail_to_array(tail)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1104`

<a id="function-function-mlc-tools-arr-unwrap-value-function-arr-unwrap-value-value-minilangcompilerml-mlc-tools-ml-778833384"></a>
### _arr_unwrap_value

```ml
function _arr_unwrap_value(value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1018`

<a id="global-global-mlc-tools-arr-void-sentinel-arr-void-sentinel-minilangcompilerml-mlc-tools-ml-681520077"></a>
### _arr_void_sentinel

```ml
_arr_void_sentinel
```


Source: `../MiniLangCompilerML/mlc/tools.ml:87`

<a id="function-function-mlc-tools-arr-wrap-value-function-arr-wrap-value-value-minilangcompilerml-mlc-tools-ml-1327506334"></a>
### _arr_wrap_value

```ml
function _arr_wrap_value(value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1011`

<a id="global-global-mlc-tools-ast-bin-cap-ast-bin-cap-minilangcompilerml-mlc-tools-ml-287052861"></a>
### _ast_bin_cap

```ml
_ast_bin_cap
```


Source: `../MiniLangCompilerML/mlc/tools.ml:117`

<a id="global-global-mlc-tools-ast-bin-count-ast-bin-count-minilangcompilerml-mlc-tools-ml-1682296807"></a>
### _ast_bin_count

```ml
_ast_bin_count
```


Source: `../MiniLangCompilerML/mlc/tools.ml:116`

<a id="function-function-mlc-tools-ast-bin-ensure-function-ast-bin-ensure-need-minilangcompilerml-mlc-tools-ml-762254837"></a>
### _ast_bin_ensure

```ml
function _ast_bin_ensure(need)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `need` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:170`

<a id="global-global-mlc-tools-ast-bin-file-ids-ast-bin-file-ids-minilangcompilerml-mlc-tools-ml-2102877769"></a>
### _ast_bin_file_ids

```ml
_ast_bin_file_ids
```


Source: `../MiniLangCompilerML/mlc/tools.ml:115`

<a id="global-global-mlc-tools-ast-bin-lefts-ast-bin-lefts-minilangcompilerml-mlc-tools-ml-1973235229"></a>
### _ast_bin_lefts

```ml
_ast_bin_lefts
```


Source: `../MiniLangCompilerML/mlc/tools.ml:111`

<a id="global-global-mlc-tools-ast-bin-op-ids-ast-bin-op-ids-minilangcompilerml-mlc-tools-ml-1751115865"></a>
### _ast_bin_op_ids

```ml
_ast_bin_op_ids
```


Source: `../MiniLangCompilerML/mlc/tools.ml:113`

<a id="global-global-mlc-tools-ast-bin-positions-ast-bin-positions-minilangcompilerml-mlc-tools-ml-591032365"></a>
### _ast_bin_positions

```ml
_ast_bin_positions
```


Source: `../MiniLangCompilerML/mlc/tools.ml:114`

<a id="global-global-mlc-tools-ast-bin-rights-ast-bin-rights-minilangcompilerml-mlc-tools-ml-1158986057"></a>
### _ast_bin_rights

```ml
_ast_bin_rights
```


Source: `../MiniLangCompilerML/mlc/tools.ml:112`

<a id="global-global-mlc-tools-ast-filename-index-ast-filename-index-minilangcompilerml-mlc-tools-ml-661978733"></a>
### _ast_filename_index

```ml
_ast_filename_index
```


Source: `../MiniLangCompilerML/mlc/tools.ml:108`

<a id="global-global-mlc-tools-ast-filenames-ast-filenames-minilangcompilerml-mlc-tools-ml-1440519017"></a>
### _ast_filenames

```ml
_ast_filenames
```


Source: `../MiniLangCompilerML/mlc/tools.ml:107`

<a id="function-function-mlc-tools-ast-intern-function-ast-intern-index-map-values-text-minilangcompilerml-mlc-tools-ml-1869376145"></a>
### _ast_intern

```ml
function _ast_intern(index_map, values, text)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `index_map` | `dynamic` | — |  |
| `values` | `dynamic` | — |  |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:228`

<a id="global-global-mlc-tools-ast-leaf-cap-ast-leaf-cap-minilangcompilerml-mlc-tools-ml-856708389"></a>
### _ast_leaf_cap

```ml
_ast_leaf_cap
```


Source: `../MiniLangCompilerML/mlc/tools.ml:106`

<a id="global-global-mlc-tools-ast-leaf-count-ast-leaf-count-minilangcompilerml-mlc-tools-ml-604526573"></a>
### _ast_leaf_count

```ml
_ast_leaf_count
```


Source: `../MiniLangCompilerML/mlc/tools.ml:105`

<a id="function-function-mlc-tools-ast-leaf-ensure-function-ast-leaf-ensure-need-minilangcompilerml-mlc-tools-ml-1858286165"></a>
### _ast_leaf_ensure

```ml
function _ast_leaf_ensure(need)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `need` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:199`

<a id="global-global-mlc-tools-ast-leaf-file-ids-ast-leaf-file-ids-minilangcompilerml-mlc-tools-ml-1259766065"></a>
### _ast_leaf_file_ids

```ml
_ast_leaf_file_ids
```


Source: `../MiniLangCompilerML/mlc/tools.ml:103`

<a id="function-function-mlc-tools-ast-leaf-kind-id-function-ast-leaf-kind-id-kind-minilangcompilerml-mlc-tools-ml-1135401737"></a>
### _ast_leaf_kind_id

```ml
function _ast_leaf_kind_id(kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:237`

<a id="function-function-mlc-tools-ast-leaf-kind-name-function-ast-leaf-kind-name-kind-id-minilangcompilerml-mlc-tools-ml-1608658517"></a>
### _ast_leaf_kind_name

```ml
function _ast_leaf_kind_name(kind_id)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind_id` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:246`

<a id="global-global-mlc-tools-ast-leaf-kinds-ast-leaf-kinds-minilangcompilerml-mlc-tools-ml-1503027909"></a>
### _ast_leaf_kinds

```ml
_ast_leaf_kinds
```


Source: `../MiniLangCompilerML/mlc/tools.ml:100`

<a id="global-global-mlc-tools-ast-leaf-payloads-ast-leaf-payloads-minilangcompilerml-mlc-tools-ml-1425707581"></a>
### _ast_leaf_payloads

```ml
_ast_leaf_payloads
```


Source: `../MiniLangCompilerML/mlc/tools.ml:101`

<a id="global-global-mlc-tools-ast-leaf-positions-ast-leaf-positions-minilangcompilerml-mlc-tools-ml-486004397"></a>
### _ast_leaf_positions

```ml
_ast_leaf_positions
```


Source: `../MiniLangCompilerML/mlc/tools.ml:102`

<a id="global-global-mlc-tools-ast-leaf-symbol-ids-ast-leaf-symbol-ids-minilangcompilerml-mlc-tools-ml-303205373"></a>
### _ast_leaf_symbol_ids

```ml
_ast_leaf_symbol_ids
```


Source: `../MiniLangCompilerML/mlc/tools.ml:104`

<a id="global-global-mlc-tools-ast-symbol-index-ast-symbol-index-minilangcompilerml-mlc-tools-ml-1502915073"></a>
### _ast_symbol_index

```ml
_ast_symbol_index
```


Source: `../MiniLangCompilerML/mlc/tools.ml:110`

<a id="global-global-mlc-tools-ast-symbols-ast-symbols-minilangcompilerml-mlc-tools-ml-1470813527"></a>
### _ast_symbols

```ml
_ast_symbols
```


Source: `../MiniLangCompilerML/mlc/tools.ml:109`

<a id="function-function-mlc-tools-ast-u32-read-inline-function-ast-u32-read-buf-index-minilangcompilerml-mlc-tools-ml-1712186319"></a>
### _ast_u32_read

```ml
inline function _ast_u32_read(buf, index)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:127`

<a id="function-function-mlc-tools-ast-u32-write-function-ast-u32-write-buf-index-value-minilangcompilerml-mlc-tools-ml-1472525749"></a>
### _ast_u32_write

```ml
function _ast_u32_write(buf, index, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:119`

<a id="function-function-mlc-tools-bp-chunk-count-inline-function-bp-chunk-count-bp-minilangcompilerml-mlc-tools-ml-1017252010"></a>
### _bp_chunk_count

```ml
inline function _bp_chunk_count(bp)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1489`

<a id="function-function-mlc-tools-bp-chunk-get-function-bp-chunk-get-bp-idx-minilangcompilerml-mlc-tools-ml-2000438364"></a>
### _bp_chunk_get

```ml
function _bp_chunk_get(bp, idx)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1507`

<a id="function-function-mlc-tools-bp-chunk-push-function-bp-chunk-push-bp-page-minilangcompilerml-mlc-tools-ml-2130812032"></a>
### _bp_chunk_push

```ml
function _bp_chunk_push(bp, page)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `page` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1544`

<a id="function-function-mlc-tools-bp-chunk-set-function-bp-chunk-set-bp-idx-page-minilangcompilerml-mlc-tools-ml-800126791"></a>
### _bp_chunk_set

```ml
function _bp_chunk_set(bp, idx, page)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `page` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1530`

<a id="function-function-mlc-tools-bp-ensure-function-bp-ensure-bp-need-minilangcompilerml-mlc-tools-ml-762920519"></a>
### _bp_ensure

```ml
function _bp_ensure(bp, need)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `need` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1551`

<a id="function-function-mlc-tools-chunks-is-paged-inline-function-chunks-is-paged-chunks-minilangcompilerml-mlc-tools-ml-1608346368"></a>
### _chunks_is_paged

```ml
inline function _chunks_is_paged(chunks)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1146`

<a id="function-function-mlc-tools-chunks-materialize-function-chunks-materialize-chunks-minilangcompilerml-mlc-tools-ml-64654197"></a>
### _chunks_materialize

```ml
function _chunks_materialize(chunks)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1209`

<a id="function-function-mlc-tools-chunks-paged-from-array-function-chunks-paged-from-array-chunks-minilangcompilerml-mlc-tools-ml-817116159"></a>
### _chunks_paged_from_array

```ml
function _chunks_paged_from_array(chunks)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1186`

<a id="function-function-mlc-tools-chunks-paged-new-function-chunks-paged-new-minilangcompilerml-mlc-tools-ml-1561044925"></a>
### _chunks_paged_new

```ml
function _chunks_paged_new()
```


Source: `../MiniLangCompilerML/mlc/tools.ml:1152`

<a id="function-function-mlc-tools-chunks-paged-push-function-chunks-paged-push-chunks-chunk-minilangcompilerml-mlc-tools-ml-170848978"></a>
### _chunks_paged_push

```ml
function _chunks_paged_push(chunks, chunk)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `chunk` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1156`

<a id="function-function-mlc-tools-chunks-paged-tag-inline-function-chunks-paged-tag-minilangcompilerml-mlc-tools-ml-1629244156"></a>
### _chunks_paged_tag

```ml
inline function _chunks_paged_tag()
```


Source: `../MiniLangCompilerML/mlc/tools.ml:1142`

<a id="function-function-mlc-tools-chunks-push-chunk-function-chunks-push-chunk-chunks-chunk-minilangcompilerml-mlc-tools-ml-555341898"></a>
### _chunks_push_chunk

```ml
function _chunks_push_chunk(chunks, chunk)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `chunk` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1195`

<a id="extern_function-extern-function-mlc-tools-copy-native-bytes-extern-function-copy-native-bytes-destination-as-ptr-source-as-ptr-count-as-u64-from-kernel32-dll-symbol-rtlmovememory-returns-ptr-minilangcompilerml-mlc-tools-ml-1872785106"></a>
### _copy_native_bytes

```ml
extern function _copy_native_bytes(destination as ptr, source as ptr, count as u64) from "kernel32.dll" symbol "RtlMoveMemory" returns ptr
```

Copy immutable string payloads directly into paged byte buffers. MiniLang's collector is non-moving, so both managed objects remain stable for the duration of this synchronous native copy.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `destination` | `ptr` | — |  |
| `source` | `ptr` | — |  |
| `count` | `u64` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:24`

<a id="function-function-mlc-tools-f32-is-inf-inline-function-f32-is-inf-v-minilangcompilerml-mlc-tools-ml-660778736"></a>
### _f32_is_inf

```ml
inline function _f32_is_inf(v)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:892`

<a id="function-function-mlc-tools-f32-is-nan-inline-function-f32-is-nan-v-minilangcompilerml-mlc-tools-ml-2146188352"></a>
### _f32_is_nan

```ml
inline function _f32_is_nan(v)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:888`

<a id="function-function-mlc-tools-fm-hash-any-function-fm-hash-any-key-minilangcompilerml-mlc-tools-ml-708208634"></a>
### _fm_hash_any

```ml
function _fm_hash_any(key)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `key` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:556`

<a id="function-function-mlc-tools-fm-insert-no-resize-function-fm-insert-no-resize-mapv-key-value-minilangcompilerml-mlc-tools-ml-2143159125"></a>
### _fm_insert_no_resize

```ml
function _fm_insert_no_resize(mapv, key, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |
| `key` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:722`

<a id="function-function-mlc-tools-fm-is-valid-function-fm-is-valid-mapv-minilangcompilerml-mlc-tools-ml-502490777"></a>
### _fm_is_valid

```ml
function _fm_is_valid(mapv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:610`

<a id="function-function-mlc-tools-fm-next-pow2-function-fm-next-pow2-n-minilangcompilerml-mlc-tools-ml-415007593"></a>
### _fm_next_pow2

```ml
function _fm_next_pow2(n)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:547`

<a id="function-function-mlc-tools-fm-probe-slot-function-fm-probe-slot-mapv-key-minilangcompilerml-mlc-tools-ml-1269360338"></a>
### _fm_probe_slot

```ml
function _fm_probe_slot(mapv, key)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |
| `key` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:708`

<a id="function-function-mlc-tools-fm-rehash-function-fm-rehash-mapv-new-cap-minilangcompilerml-mlc-tools-ml-1514670016"></a>
### _fm_rehash

```ml
function _fm_rehash(mapv, new_cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |
| `new_cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:756`

<a id="function-function-mlc-tools-u64-mask-function-u64-mask-returns-int-minilangcompilerml-mlc-tools-ml-345672309"></a>
### _u64_mask

```ml
function _u64_mask() returns int
```


Source: `../MiniLangCompilerML/mlc/tools.ml:542`

<a id="function-function-mlc-tools-align-to-mod-function-align-to-mod-n-mod-target-minilangcompilerml-mlc-tools-ml-801474010"></a>
### align_to_mod

```ml
function align_to_mod(n, mod, target)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `dynamic` | — |  |
| `mod` | `dynamic` | — |  |
| `target` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:827`

<a id="function-function-mlc-tools-align-up-function-align-up-n-as-int-a-as-int-returns-int-minilangcompilerml-mlc-tools-ml-2147042892"></a>
### align_up

```ml
function align_up(n as int, a as int) returns int
```

Round n upward to the next power-of-two alignment boundary.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `n` | `int` | — |  |
| `a` | `int` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:823`

<a id="function-function-mlc-tools-arr-chunk-count-function-arr-chunk-count-builder-minilangcompilerml-mlc-tools-ml-959842180"></a>
### arr_chunk_count

```ml
function arr_chunk_count(builder)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `builder` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1465`

<a id="function-function-mlc-tools-arr-chunk-finish-function-arr-chunk-finish-builder-minilangcompilerml-mlc-tools-ml-400788426"></a>
### arr_chunk_finish

```ml
function arr_chunk_finish(builder)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `builder` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1459`

<a id="function-function-mlc-tools-arr-chunk-get-function-arr-chunk-get-builder-idx-defaultv-minilangcompilerml-mlc-tools-ml-1111266598"></a>
### arr_chunk_get

```ml
function arr_chunk_get(builder, idx, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `builder` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1470`

<a id="function-function-mlc-tools-arr-chunk-new-function-arr-chunk-new-cap-minilangcompilerml-mlc-tools-ml-884776937"></a>
### arr_chunk_new

```ml
function arr_chunk_new(cap)
```

Create a chunked array builder with the requested tail capacity.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1231`

<a id="function-function-mlc-tools-arr-chunk-push-function-arr-chunk-push-builder-value-minilangcompilerml-mlc-tools-ml-1189810709"></a>
### arr_chunk_push

```ml
function arr_chunk_push(builder, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `builder` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1271`

<a id="function-function-mlc-tools-arr-chunk-push-all-function-arr-chunk-push-all-builder-values-minilangcompilerml-mlc-tools-ml-1717041116"></a>
### arr_chunk_push_all

```ml
function arr_chunk_push_all(builder, values)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `builder` | `dynamic` | — |  |
| `values` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1475`

<a id="function-function-mlc-tools-arr-chunk-tail-get-function-arr-chunk-tail-get-tail-idx-defaultv-minilangcompilerml-mlc-tools-ml-1354066617"></a>
### arr_chunk_tail_get

```ml
function arr_chunk_tail_get(tail, idx, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tail` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1057`

<a id="function-function-mlc-tools-arr-chunk-tail-len-inline-function-arr-chunk-tail-len-tail-minilangcompilerml-mlc-tools-ml-1676095176"></a>
### arr_chunk_tail_len

```ml
inline function arr_chunk_tail_len(tail)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1046`

<a id="function-function-mlc-tools-arr-chunk-tail-set-function-arr-chunk-tail-set-tail-idx-value-minilangcompilerml-mlc-tools-ml-1226060927"></a>
### arr_chunk_tail_set

```ml
function arr_chunk_tail_set(tail, idx, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tail` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1069`

<a id="function-function-mlc-tools-arr-chunked-count-function-arr-chunked-count-chunks-tail-cap-minilangcompilerml-mlc-tools-ml-318663673"></a>
### arr_chunked_count

```ml
function arr_chunked_count(chunks, tail, cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1399`

<a id="function-function-mlc-tools-arr-chunked-finish-function-arr-chunked-finish-chunks-tail-minilangcompilerml-mlc-tools-ml-1503542045"></a>
### arr_chunked_finish

```ml
function arr_chunked_finish(chunks, tail)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1370`

<a id="function-function-mlc-tools-arr-chunked-get-function-arr-chunked-get-chunks-tail-idx-cap-defaultv-minilangcompilerml-mlc-tools-ml-1712558123"></a>
### arr_chunked_get

```ml
function arr_chunked_get(chunks, tail, idx, cap, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `cap` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1418`

<a id="function-function-mlc-tools-arr-chunked-groups-function-arr-chunked-groups-chunks-tail-minilangcompilerml-mlc-tools-ml-1580919225"></a>
### arr_chunked_groups

```ml
function arr_chunked_groups(chunks, tail)
```

Return the storage groups of a chunked sequence without flattening their elements. Hot consumers can traverse the small outer array and each fixed chunk directly, avoiding an indexed lookup and shape validation per value.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1385`

<a id="function-function-mlc-tools-arr-chunked-push-function-arr-chunked-push-chunks-tail-value-cap-minilangcompilerml-mlc-tools-ml-939210338"></a>
### arr_chunked_push

```ml
function arr_chunked_push(chunks, tail, value, cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1237`

<a id="function-function-mlc-tools-arr-drop-last-function-arr-drop-last-values-minilangcompilerml-mlc-tools-ml-2048124295"></a>
### arr_drop_last

```ml
function arr_drop_last(values)
```

Return every array element except the last one. The builtin slice() operates on bytes, so compiler data structures must use an explicit array copy.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:31`

<a id="function-function-mlc-tools-arr-merge-chunk-groups-with-tail-function-arr-merge-chunk-groups-with-tail-groups-tail-arr-minilangcompilerml-mlc-tools-ml-1207646995"></a>
### arr_merge_chunk_groups_with_tail

```ml
function arr_merge_chunk_groups_with_tail(groups, tail_arr)
```

Flatten existing chunk groups plus the active tail directly into the final array. This avoids allocating and copying a temporary outer `groups + tail` array at every builder finalization.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `groups` | `dynamic` | — |  |
| `tail_arr` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1310`

<a id="function-function-mlc-tools-arr-merge-chunks-balanced-function-arr-merge-chunks-balanced-chunks-minilangcompilerml-mlc-tools-ml-1836628779"></a>
### arr_merge_chunks_balanced

```ml
function arr_merge_chunks_balanced(chunks)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1280`

<a id="function-function-mlc-tools-arr-merge-variadic-parts-function-arr-merge-variadic-parts-parts-minilangcompilerml-mlc-tools-ml-102110413"></a>
### arr_merge_variadic_parts

```ml
function arr_merge_variadic_parts(parts...)
```

Merge short-lived call-site parts without first allocating an outer array. The variadic tail is read-only and never escapes, so the compiler represents it as an immutable view over the caller's argument slots.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `parts...` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1343`

<a id="function-function-mlc-tools-arr-vec-clear-function-arr-vec-clear-vec-minilangcompilerml-mlc-tools-ml-1205216347"></a>
### arr_vec_clear

```ml
function arr_vec_clear(vec)
```

Reset a compiler-internal vector without discarding its capacity. Stale backing slots are intentionally left in place: compiler worklists normally reference the still-live AST, and overwriting the active prefix on the next pass is cheaper than clearing the complete high-water capacity.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:442`

<a id="function-function-mlc-tools-arr-vec-count-function-arr-vec-count-vec-minilangcompilerml-mlc-tools-ml-1532908043"></a>
### arr_vec_count

```ml
function arr_vec_count(vec)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:424`

<a id="function-function-mlc-tools-arr-vec-count-trusted-inline-function-arr-vec-count-trusted-vec-returns-int-minilangcompilerml-mlc-tools-ml-1538068382"></a>
### arr_vec_count_trusted

```ml
inline function arr_vec_count_trusted(vec) returns int
```

Trusted variants are used only after one nominal ArrayVector check. They retain logical bounds handling but omit redundant shape validation.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:431`

<a id="function-function-mlc-tools-arr-vec-finish-function-arr-vec-finish-vec-minilangcompilerml-mlc-tools-ml-1771830987"></a>
### arr_vec_finish

```ml
function arr_vec_finish(vec)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:529`

<a id="function-function-mlc-tools-arr-vec-from-array-function-arr-vec-from-array-values-extra-cap-minilangcompilerml-mlc-tools-ml-2097085018"></a>
### arr_vec_from_array

```ml
function arr_vec_from_array(values, extra_cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `values` | `dynamic` | — |  |
| `extra_cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:514`

<a id="function-function-mlc-tools-arr-vec-get-function-arr-vec-get-vec-idx-defaultv-minilangcompilerml-mlc-tools-ml-1317803811"></a>
### arr_vec_get

```ml
function arr_vec_get(vec, idx, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:465`

<a id="function-function-mlc-tools-arr-vec-get-trusted-inline-function-arr-vec-get-trusted-vec-idx-defaultv-minilangcompilerml-mlc-tools-ml-2123543640"></a>
### arr_vec_get_trusted

```ml
inline function arr_vec_get_trusted(vec, idx, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:470`

<a id="function-function-mlc-tools-arr-vec-is-inline-function-arr-vec-is-value-returns-bool-minilangcompilerml-mlc-tools-ml-1713294778"></a>
### arr_vec_is

```ml
inline function arr_vec_is(value) returns bool
```

ArrayVector is compiler-internal and always created by arr_vec_new. A nominal test avoids repeated guarded member probes on hot accesses while still rejecting unrelated structs deterministically.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:414`

<a id="function-function-mlc-tools-arr-vec-new-function-arr-vec-new-initial-cap-minilangcompilerml-mlc-tools-ml-1057849040"></a>
### arr_vec_new

```ml
function arr_vec_new(initial_cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `initial_cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:418`

<a id="function-function-mlc-tools-arr-vec-push-function-arr-vec-push-vec-value-minilangcompilerml-mlc-tools-ml-1083477842"></a>
### arr_vec_push

```ml
function arr_vec_push(vec, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:490`

<a id="function-function-mlc-tools-arr-vec-release-refs-function-arr-vec-release-refs-vec-minilangcompilerml-mlc-tools-ml-712481039"></a>
### arr_vec_release_refs

```ml
function arr_vec_release_refs(vec)
```

Reset a transient vector and remove every managed reference from its backing store.  Ordinary arr_vec_clear deliberately retains stale slots for speed; compiler phase arenas must use this stronger form before a collection so a high-water worklist cannot keep already emitted AST nodes alive.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:453`

<a id="function-function-mlc-tools-arr-vec-set-function-arr-vec-set-vec-idx-value-minilangcompilerml-mlc-tools-ml-1308614913"></a>
### arr_vec_set

```ml
function arr_vec_set(vec, idx, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:476`

<a id="function-function-mlc-tools-arr-vec-set-trusted-inline-function-arr-vec-set-trusted-vec-idx-value-minilangcompilerml-mlc-tools-ml-2113977336"></a>
### arr_vec_set_trusted

```ml
inline function arr_vec_set_trusted(vec, idx, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `vec` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:482`

- [mlc.tools.ArrayChunkBuilder](Type-mlc-tools-arraychunkbuilder-1938150295.md) — struct
- [mlc.tools.ArrayChunkTail](Type-mlc-tools-arraychunktail-561106194.md) — struct
- [mlc.tools.ArrayChunkVoidSentinel](Type-mlc-tools-arraychunkvoidsentinel-571833950.md) — struct
- [mlc.tools.ArrayVector](Type-mlc-tools-arrayvector-1058682992.md) — struct
<a id="function-function-mlc-tools-ast-arena-release-function-ast-arena-release-minilangcompilerml-mlc-tools-ml-1504307925"></a>
### ast_arena_release

```ml
function ast_arena_release()
```

Drop every compilation-owned compact AST column and intern table. This is a bulk ownership boundary: callers must release only after code generation no longer holds or dereferences NodeIds from this arena.


Source: `../MiniLangCompilerML/mlc/tools.ml:135`

<a id="constant-constant-mlc-tools-ast-bin-handle-base-const-ast-bin-handle-base-1073741824-minilangcompilerml-mlc-tools-ml-1111212633"></a>
### AST_BIN_HANDLE_BASE

```ml
const AST_BIN_HANDLE_BASE = 1073741824
```


Source: `../MiniLangCompilerML/mlc/tools.ml:98`

<a id="function-function-mlc-tools-ast-bin-new-function-ast-bin-new-left-op-right-pos-filename-minilangcompilerml-mlc-tools-ml-2032932400"></a>
### ast_bin_new

```ml
function ast_bin_new(left, op, right, pos, filename)
```

Binary expressions are the most frequent composite AST node. Store their children and metadata in a typed structure-of-arrays arena while retaining the same accessors for compiler-created legacy structs.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `op` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:293`

<a id="function-function-mlc-tools-ast-filename-function-ast-filename-node-minilangcompilerml-mlc-tools-ml-753518917"></a>
### ast_filename

```ml
function ast_filename(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:369`

<a id="function-function-mlc-tools-ast-is-bin-inline-function-ast-is-bin-node-minilangcompilerml-mlc-tools-ml-389053228"></a>
### ast_is_bin

```ml
inline function ast_is_bin(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:325`

<a id="function-function-mlc-tools-ast-is-leaf-inline-function-ast-is-leaf-node-minilangcompilerml-mlc-tools-ml-1819009608"></a>
### ast_is_leaf

```ml
inline function ast_is_leaf(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:319`

<a id="function-function-mlc-tools-ast-is-node-function-ast-is-node-node-minilangcompilerml-mlc-tools-ml-512096153"></a>
### ast_is_node

```ml
function ast_is_node(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:331`

<a id="function-function-mlc-tools-ast-kind-function-ast-kind-node-minilangcompilerml-mlc-tools-ml-1730502509"></a>
### ast_kind

```ml
function ast_kind(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:336`

<a id="constant-constant-mlc-tools-ast-leaf-bool-const-ast-leaf-bool-3-minilangcompilerml-mlc-tools-ml-232854263"></a>
### AST_LEAF_BOOL

```ml
const AST_LEAF_BOOL = 3
```


Source: `../MiniLangCompilerML/mlc/tools.ml:95`

<a id="function-function-mlc-tools-ast-leaf-new-function-ast-leaf-new-kind-value-pos-filename-minilangcompilerml-mlc-tools-ml-1728832455"></a>
### ast_leaf_new

```ml
function ast_leaf_new(kind, value, pos, filename)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:255`

<a id="constant-constant-mlc-tools-ast-leaf-num-const-ast-leaf-num-1-minilangcompilerml-mlc-tools-ml-1049918587"></a>
### AST_LEAF_NUM

```ml
const AST_LEAF_NUM = 1
```

Compact arena for immutable expression leaves. Negative integers are stable NodeIds; ordinary non-negative MiniLang values therefore never collide with compiler AST handles. The structure-of-arrays layout keeps source locations, variable symbols and kinds out of individual managed structs.


Source: `../MiniLangCompilerML/mlc/tools.ml:93`

<a id="function-function-mlc-tools-ast-leaf-reset-function-ast-leaf-reset-minilangcompilerml-mlc-tools-ml-1425454517"></a>
### ast_leaf_reset

```ml
function ast_leaf_reset()
```


Source: `../MiniLangCompilerML/mlc/tools.ml:161`

<a id="function-function-mlc-tools-ast-leaf-stats-function-ast-leaf-stats-minilangcompilerml-mlc-tools-ml-902929661"></a>
### ast_leaf_stats

```ml
function ast_leaf_stats()
```


Source: `../MiniLangCompilerML/mlc/tools.ml:404`

<a id="constant-constant-mlc-tools-ast-leaf-str-const-ast-leaf-str-2-minilangcompilerml-mlc-tools-ml-1179852310"></a>
### AST_LEAF_STR

```ml
const AST_LEAF_STR = 2
```


Source: `../MiniLangCompilerML/mlc/tools.ml:94`

<a id="constant-constant-mlc-tools-ast-leaf-var-const-ast-leaf-var-5-minilangcompilerml-mlc-tools-ml-2142323337"></a>
### AST_LEAF_VAR

```ml
const AST_LEAF_VAR = 5
```


Source: `../MiniLangCompilerML/mlc/tools.ml:97`

<a id="constant-constant-mlc-tools-ast-leaf-void-const-ast-leaf-void-4-minilangcompilerml-mlc-tools-ml-868961600"></a>
### AST_LEAF_VOID

```ml
const AST_LEAF_VOID = 4
```


Source: `../MiniLangCompilerML/mlc/tools.ml:96`

<a id="function-function-mlc-tools-ast-left-function-ast-left-node-minilangcompilerml-mlc-tools-ml-1999127545"></a>
### ast_left

```ml
function ast_left(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:382`

<a id="function-function-mlc-tools-ast-name-function-ast-name-node-minilangcompilerml-mlc-tools-ml-1805639369"></a>
### ast_name

```ml
function ast_name(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:351`

<a id="function-function-mlc-tools-ast-op-function-ast-op-node-minilangcompilerml-mlc-tools-ml-1386734873"></a>
### ast_op

```ml
function ast_op(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:394`

<a id="function-function-mlc-tools-ast-pos-function-ast-pos-node-minilangcompilerml-mlc-tools-ml-1182625919"></a>
### ast_pos

```ml
function ast_pos(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:362`

<a id="function-function-mlc-tools-ast-right-function-ast-right-node-minilangcompilerml-mlc-tools-ml-164038467"></a>
### ast_right

```ml
function ast_right(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:388`

<a id="function-function-mlc-tools-ast-value-function-ast-value-node-minilangcompilerml-mlc-tools-ml-1010813081"></a>
### ast_value

```ml
function ast_value(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:345`

<a id="function-function-mlc-tools-byte-pages-append-function-byte-pages-append-bp-src-minilangcompilerml-mlc-tools-ml-995970681"></a>
### byte_pages_append

```ml
function byte_pages_append(bp, src)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `src` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1594`

<a id="function-function-mlc-tools-byte-pages-append-string-function-byte-pages-append-string-bp-text-minilangcompilerml-mlc-tools-ml-35820288"></a>
### byte_pages_append_string

```ml
function byte_pages_append_string(bp, text)
```

Append a string's UTF-8 payload without first allocating an equally large temporary bytes value. String length is stored in bytes by the runtime, and the payload immediately follows the common eight-byte object header.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1625`

<a id="function-function-mlc-tools-byte-pages-append-u16-function-byte-pages-append-u16-bp-value-minilangcompilerml-mlc-tools-ml-2020916980"></a>
### byte_pages_append_u16

```ml
function byte_pages_append_u16(bp, value)
```

Append one little-endian 16-bit value without a temporary bytes object.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1653`

<a id="function-function-mlc-tools-byte-pages-append-u32-function-byte-pages-append-u32-bp-value-minilangcompilerml-mlc-tools-ml-55253024"></a>
### byte_pages_append_u32

```ml
function byte_pages_append_u32(bp, value)
```

Append one little-endian 32-bit value without allocating a temporary four-byte object. Object serialization writes several integers per label and relocation, so avoiding that allocation materially reduces allocator and GC traffic on large programs.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1679`

<a id="function-function-mlc-tools-byte-pages-append-u64-function-byte-pages-append-u64-bp-value-minilangcompilerml-mlc-tools-ml-1215221310"></a>
### byte_pages_append_u64

```ml
function byte_pages_append_u64(bp, value)
```

Append one little-endian 64-bit value. MiniLang integers carry 61 payload bits; the writer deliberately preserves their sign-extended bit pattern.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1709`

<a id="function-function-mlc-tools-byte-pages-get-byte-function-byte-pages-get-byte-bp-idx-defaultv-minilangcompilerml-mlc-tools-ml-790676223"></a>
### byte_pages_get_byte

```ml
function byte_pages_get_byte(bp, idx, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1808`

<a id="function-function-mlc-tools-byte-pages-len-function-byte-pages-len-bp-minilangcompilerml-mlc-tools-ml-31116923"></a>
### byte_pages_len

```ml
function byte_pages_len(bp)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1561`

<a id="function-function-mlc-tools-byte-pages-new-function-byte-pages-new-minilangcompilerml-mlc-tools-ml-179116341"></a>
### byte_pages_new

```ml
function byte_pages_new()
```

Create an empty paged byte buffer.


Source: `../MiniLangCompilerML/mlc/tools.ml:1485`

<a id="function-function-mlc-tools-byte-pages-page-function-byte-pages-page-bp-page-index-minilangcompilerml-mlc-tools-ml-1293125713"></a>
### byte_pages_page

```ml
function byte_pages_page(bp, page_index)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `page_index` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1578`

<a id="function-function-mlc-tools-byte-pages-page-count-function-byte-pages-page-count-bp-minilangcompilerml-mlc-tools-ml-50459177"></a>
### byte_pages_page_count

```ml
function byte_pages_page_count(bp)
```

Expose read-only pages to streaming serializers. The final page may contain spare capacity; byte_pages_page_used() reports the exact writable prefix.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1569`

<a id="function-function-mlc-tools-byte-pages-page-used-function-byte-pages-page-used-bp-page-index-minilangcompilerml-mlc-tools-ml-846152731"></a>
### byte_pages_page_used

```ml
function byte_pages_page_used(bp, page_index)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `page_index` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1584`

<a id="function-function-mlc-tools-byte-pages-set-byte-function-byte-pages-set-byte-bp-idx-value-minilangcompilerml-mlc-tools-ml-930449221"></a>
### byte_pages_set_byte

```ml
function byte_pages_set_byte(bp, idx, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `idx` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1792`

<a id="function-function-mlc-tools-byte-pages-to-bytes-function-byte-pages-to-bytes-bp-minilangcompilerml-mlc-tools-ml-374052077"></a>
### byte_pages_to_bytes

```ml
function byte_pages_to_bytes(bp)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1768`

<a id="function-function-mlc-tools-byte-pages-write-at-function-byte-pages-write-at-bp-offset-src-minilangcompilerml-mlc-tools-ml-2074881178"></a>
### byte_pages_write_at

```ml
function byte_pages_write_at(bp, offset, src)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `bp` | `dynamic` | — |  |
| `offset` | `dynamic` | — |  |
| `src` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:1738`

- [mlc.tools.BytePages](Type-mlc-tools-bytepages-121699952.md) — struct
<a id="function-function-mlc-tools-enc-bool-function-enc-bool-b-minilangcompilerml-mlc-tools-ml-437479831"></a>
### enc_bool

```ml
function enc_bool(b)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `b` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:872`

<a id="function-function-mlc-tools-enc-enum-function-enc-enum-enum-id-variant-id-minilangcompilerml-mlc-tools-ml-298183985"></a>
### enc_enum

```ml
function enc_enum(enum_id, variant_id)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `enum_id` | `dynamic` | — |  |
| `variant_id` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:883`

<a id="function-function-mlc-tools-enc-int-function-enc-int-x-as-int-returns-int-minilangcompilerml-mlc-tools-ml-354898282"></a>
### enc_int

```ml
function enc_int(x as int) returns int
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `int` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:868`

<a id="function-function-mlc-tools-enc-void-function-enc-void-returns-int-minilangcompilerml-mlc-tools-ml-1389420791"></a>
### enc_void

```ml
function enc_void() returns int
```


Source: `../MiniLangCompilerML/mlc/tools.ml:879`

<a id="function-function-mlc-tools-extern-library-label-token-function-extern-library-label-token-library-minilangcompilerml-mlc-tools-ml-1955170050"></a>
### extern_library_label_token

```ml
function extern_library_label_token(library)
```

Encode the exact UTF-8 library spelling into a reversible assembler-label token. Paths and punctuation must not collapse to one dynamic-import slot.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `library` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:8`

- [mlc.tools.FastMap](Type-mlc-tools-fastmap-534878990.md) — struct
<a id="function-function-mlc-tools-fastmap-clear-function-fastmap-clear-mapv-minilangcompilerml-mlc-tools-ml-1163356661"></a>
### fastmap_clear

```ml
function fastmap_clear(mapv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:652`

<a id="function-function-mlc-tools-fastmap-get-function-fastmap-get-mapv-key-defaultv-minilangcompilerml-mlc-tools-ml-1257315169"></a>
### fastmap_get

```ml
function fastmap_get(mapv, key, defaultv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |
| `key` | `dynamic` | — |  |
| `defaultv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:777`

<a id="function-function-mlc-tools-fastmap-has-function-fastmap-has-mapv-key-minilangcompilerml-mlc-tools-ml-557257152"></a>
### fastmap_has

```ml
function fastmap_has(mapv, key)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |
| `key` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:791`

<a id="function-function-mlc-tools-fastmap-items-function-fastmap-items-mapv-minilangcompilerml-mlc-tools-ml-175018587"></a>
### fastmap_items

```ml
function fastmap_items(mapv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:811`

<a id="function-function-mlc-tools-fastmap-new-function-fastmap-new-initial-cap-minilangcompilerml-mlc-tools-ml-1089151308"></a>
### fastmap_new

```ml
function fastmap_new(initial_cap)
```

FastMap operations use deterministic hashing and linear probing.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `initial_cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:624`

<a id="function-function-mlc-tools-fastmap-release-refs-function-fastmap-release-refs-mapv-minilangcompilerml-mlc-tools-ml-1419240241"></a>
### fastmap_release_refs

```ml
function fastmap_release_refs(mapv)
```

Reset a transient map including stale generations.  Epoch-only clearing is O(1), but its old key/value cells remain visible to the tracing collector. Batch arenas call this at ownership boundaries, trading one linear sweep for prompt reclamation of large analysis graphs.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:675`

<a id="function-function-mlc-tools-fastmap-set-function-fastmap-set-mapv-key-value-minilangcompilerml-mlc-tools-ml-1101209063"></a>
### fastmap_set

```ml
function fastmap_set(mapv, key, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |
| `key` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:768`

<a id="function-function-mlc-tools-fastmap-size-function-fastmap-size-mapv-minilangcompilerml-mlc-tools-ml-1545950149"></a>
### fastmap_size

```ml
function fastmap_size(mapv)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:805`

<a id="function-function-mlc-tools-fastmap-track-refs-function-fastmap-track-refs-mapv-minilangcompilerml-mlc-tools-ml-1298559957"></a>
### fastmap_track_refs

```ml
function fastmap_track_refs(mapv)
```

Enable precise reference release only for phase-local maps. Production symbol and label indexes retain the O(1) insertion path and do not pay for a touched-slot side vector they never need to reset strongly.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `mapv` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:635`

<a id="function-function-mlc-tools-try-enc-float-immediate-function-try-enc-float-immediate-x-minilangcompilerml-mlc-tools-ml-872221487"></a>
### try_enc_float_immediate

```ml
function try_enc_float_immediate(x)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:899`

<a id="function-function-mlc-tools-u16-function-u16-x-minilangcompilerml-mlc-tools-ml-652027937"></a>
### u16

```ml
function u16(x)
```

Serialize an unsigned 16-bit value in little-endian order.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:834`

<a id="function-function-mlc-tools-u32-function-u32-x-minilangcompilerml-mlc-tools-ml-752516213"></a>
### u32

```ml
function u32(x)
```

Serialize an unsigned 32-bit value in little-endian order.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:843`

<a id="function-function-mlc-tools-u64-function-u64-x-minilangcompilerml-mlc-tools-ml-1637819567"></a>
### u64

```ml
function u64(x)
```

Serialize the low 64 bits of a value in little-endian order.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `x` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/tools.ml:854`
