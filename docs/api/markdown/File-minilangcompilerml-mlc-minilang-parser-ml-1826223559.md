# `../MiniLangCompilerML/mlc/minilang_parser.ml`

[Home](README.md) · [Files](Files.md)

Package: [`mlc.minilang_parser`](Package-mlc-minilang-parser-1725130264.md)

Reachable from entry: **yes**

## Imports

- `mlc/tools.ml` as `t` → [../MiniLangCompilerML/mlc/tools.ml](File-minilangcompilerml-mlc-tools-ml-978540687.md)
- `std/string.ml` as `s` → [../MiniLangCompilerML/std/string.ml](File-minilangcompilerml-std-string-ml-1722707944.md)
- `std/string_builder.ml` as `sb` → [../MiniLangCompilerML/std/string_builder.ml](File-minilangcompilerml-std-string-builder-ml-553784756.md)

## Declarations

<a id="function-function-mlc-minilang-parser-advance-function-advance-minilangcompilerml-mlc-minilang-parser-ml-922821225"></a>
### _advance

```ml
function _advance()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1278`

<a id="function-function-mlc-minilang-parser-canonical-type-name-function-canonical-type-name-raw-ty-minilangcompilerml-mlc-minilang-parser-ml-1384269577"></a>
### _canonical_type_name

```ml
function _canonical_type_name(raw_ty)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw_ty` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1868`

<a id="function-function-mlc-minilang-parser-charcode-function-charcode-ch-minilangcompilerml-mlc-minilang-parser-ml-550290242"></a>
### _charCode

```ml
function _charCode(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:565`

<a id="function-function-mlc-minilang-parser-charfromcode-function-charfromcode-v-minilangcompilerml-mlc-minilang-parser-ml-392834371"></a>
### _charFromCode

```ml
function _charFromCode(v)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1331`

<a id="function-function-mlc-minilang-parser-chunked-finish-function-chunked-finish-chunks-tail-minilangcompilerml-mlc-minilang-parser-ml-899485551"></a>
### _chunked_finish

```ml
function _chunked_finish(chunks, tail)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:788`

<a id="function-function-mlc-minilang-parser-chunked-merge-balanced-function-chunked-merge-balanced-chunks-minilangcompilerml-mlc-minilang-parser-ml-654025625"></a>
### _chunked_merge_balanced

```ml
function _chunked_merge_balanced(chunks)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:728`

<a id="function-function-mlc-minilang-parser-chunked-merge-with-tail-function-chunked-merge-with-tail-chunks-tail-arr-minilangcompilerml-mlc-minilang-parser-ml-1780157361"></a>
### _chunked_merge_with_tail

```ml
function _chunked_merge_with_tail(chunks, tail_arr)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail_arr` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:758`

<a id="function-function-mlc-minilang-parser-chunked-push-function-chunked-push-chunks-tail-value-cap-minilangcompilerml-mlc-minilang-parser-ml-1815914634"></a>
### _chunked_push

```ml
function _chunked_push(chunks, tail, value, cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `chunks` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:704`

<a id="function-function-mlc-minilang-parser-clear-error-function-clear-error-minilangcompilerml-mlc-minilang-parser-ml-495700793"></a>
### _clear_error

```ml
function _clear_error()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1235`

<a id="global-global-mlc-minilang-parser-collect-errors-collect-errors-minilangcompilerml-mlc-minilang-parser-ml-327941821"></a>
### _collect_errors

```ml
_collect_errors
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1193`

<a id="function-function-mlc-minilang-parser-compile-argument-pos-function-compile-argument-pos-line-argument-line-start-hash-col-minilangcompilerml-mlc-minilang-parser-ml-690013358"></a>
### _compile_argument_pos

```ml
function _compile_argument_pos(line, argument, line_start, hash_col)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `line` | `dynamic` | — |  |
| `argument` | `dynamic` | — |  |
| `line_start` | `dynamic` | — |  |
| `hash_col` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3710`

<a id="function-function-mlc-minilang-parser-compile-block-comment-state-function-compile-block-comment-state-line-in-block-minilangcompilerml-mlc-minilang-parser-ml-283694902"></a>
### _compile_block_comment_state

```ml
function _compile_block_comment_state(line, in_block)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `line` | `dynamic` | — |  |
| `in_block` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3656`

<a id="function-function-mlc-minilang-parser-compile-env-find-function-compile-env-find-env-name-minilangcompilerml-mlc-minilang-parser-ml-380702305"></a>
### _compile_env_find

```ml
function _compile_env_find(env, name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `env` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3385`

<a id="function-function-mlc-minilang-parser-compile-env-get-function-compile-env-get-env-name-minilangcompilerml-mlc-minilang-parser-ml-1552573325"></a>
### _compile_env_get

```ml
function _compile_env_get(env, name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `env` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3397`

<a id="function-function-mlc-minilang-parser-compile-env-has-function-compile-env-has-env-name-minilangcompilerml-mlc-minilang-parser-ml-589774229"></a>
### _compile_env_has

```ml
function _compile_env_has(env, name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `env` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3393`

<a id="function-function-mlc-minilang-parser-compile-env-set-function-compile-env-set-env-name-value-minilangcompilerml-mlc-minilang-parser-ml-182040068"></a>
### _compile_env_set

```ml
function _compile_env_set(env, name, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `env` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3403`

<a id="function-function-mlc-minilang-parser-compile-eval-function-compile-eval-text-env-filename-base-pos-minilangcompilerml-mlc-minilang-parser-ml-1581518484"></a>
### _compile_eval

```ml
function _compile_eval(text, env, filename, base_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |
| `env` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `base_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3570`

<a id="function-function-mlc-minilang-parser-compile-eval-node-function-compile-eval-node-expr-env-filename-base-pos-minilangcompilerml-mlc-minilang-parser-ml-278232646"></a>
### _compile_eval_node

```ml
function _compile_eval_node(expr, env, filename, base_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `expr` | `dynamic` | — |  |
| `env` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `base_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3468`

<a id="function-function-mlc-minilang-parser-compile-external-has-function-compile-external-has-name-minilangcompilerml-mlc-minilang-parser-ml-1372549356"></a>
### _compile_external_has

```ml
function _compile_external_has(name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3634`

<a id="global-global-mlc-minilang-parser-compile-external-values-compile-external-values-minilangcompilerml-mlc-minilang-parser-ml-1715115963"></a>
### _compile_external_values

```ml
_compile_external_values
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:531`

<a id="function-function-mlc-minilang-parser-compile-frames-active-function-compile-frames-active-frames-minilangcompilerml-mlc-minilang-parser-ml-709714471"></a>
### _compile_frames_active

```ml
function _compile_frames_active(frames)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `frames` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3696`

<a id="function-function-mlc-minilang-parser-compile-frames-pop-function-compile-frames-pop-frames-minilangcompilerml-mlc-minilang-parser-ml-1165108089"></a>
### _compile_frames_pop

```ml
function _compile_frames_pop(frames)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `frames` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3701`

<a id="function-function-mlc-minilang-parser-compile-is-error-function-compile-is-error-value-minilangcompilerml-mlc-minilang-parser-ml-104422880"></a>
### _compile_is_error

```ml
function _compile_is_error(value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3361`

<a id="function-function-mlc-minilang-parser-compile-is-predefined-function-compile-is-predefined-name-minilangcompilerml-mlc-minilang-parser-ml-2094692814"></a>
### _compile_is_predefined

```ml
function _compile_is_predefined(name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3381`

<a id="function-function-mlc-minilang-parser-compile-ltrim-index-function-compile-ltrim-index-line-minilangcompilerml-mlc-minilang-parser-ml-1163641499"></a>
### _compile_ltrim_index

```ml
function _compile_ltrim_index(line)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `line` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3638`

<a id="function-function-mlc-minilang-parser-compile-maybe-has-directive-function-compile-maybe-has-directive-code-minilangcompilerml-mlc-minilang-parser-ml-373523924"></a>
### _compile_maybe_has_directive

```ml
function _compile_maybe_has_directive(code)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `code` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3736`

<a id="function-function-mlc-minilang-parser-compile-node-pos-function-compile-node-pos-expr-base-pos-minilangcompilerml-mlc-minilang-parser-ml-981891870"></a>
### _compile_node_pos

```ml
function _compile_node_pos(expr, base_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `expr` | `dynamic` | — |  |
| `base_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3446`

<a id="function-function-mlc-minilang-parser-compile-numeric-text-function-compile-numeric-text-raw-minilangcompilerml-mlc-minilang-parser-ml-367134455"></a>
### _compile_numeric_text

```ml
function _compile_numeric_text(raw)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3579`

<a id="function-function-mlc-minilang-parser-compile-option-parts-function-compile-option-parts-argument-filename-argument-pos-minilangcompilerml-mlc-minilang-parser-ml-18298859"></a>
### _compile_option_parts

```ml
function _compile_option_parts(argument, filename, argument_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `argument` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `argument_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3717`

<a id="function-function-mlc-minilang-parser-compile-parse-cli-value-function-compile-parse-cli-value-raw-minilangcompilerml-mlc-minilang-parser-ml-51143003"></a>
### _compile_parse_cli_value

```ml
function _compile_parse_cli_value(raw)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3589`

<a id="function-function-mlc-minilang-parser-compile-predefined-values-function-compile-predefined-values-minilangcompilerml-mlc-minilang-parser-ml-1820055385"></a>
### _compile_predefined_values

```ml
function _compile_predefined_values()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3414`

<a id="function-function-mlc-minilang-parser-compile-split-command-function-compile-split-command-body-minilangcompilerml-mlc-minilang-parser-ml-326741333"></a>
### _compile_split_command

```ml
function _compile_split_command(body)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3646`

<a id="function-function-mlc-minilang-parser-compile-string-compare-function-compile-string-compare-left-right-minilangcompilerml-mlc-minilang-parser-ml-337293596"></a>
### _compile_string_compare

```ml
function _compile_string_compare(left, right)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3452`

<a id="global-global-mlc-minilang-parser-compile-target-abi-compile-target-abi-minilangcompilerml-mlc-minilang-parser-ml-919043685"></a>
### _compile_target_abi

```ml
_compile_target_abi
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:533`

<a id="global-global-mlc-minilang-parser-compile-target-format-compile-target-format-minilangcompilerml-mlc-minilang-parser-ml-882207881"></a>
### _compile_target_format

```ml
_compile_target_format
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:534`

<a id="global-global-mlc-minilang-parser-compile-target-os-compile-target-os-minilangcompilerml-mlc-minilang-parser-ml-1746305111"></a>
### _compile_target_os

```ml
_compile_target_os
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:532`

<a id="function-function-mlc-minilang-parser-compile-valid-name-function-compile-valid-name-name-minilangcompilerml-mlc-minilang-parser-ml-716261520"></a>
### _compile_valid_name

```ml
function _compile_valid_name(name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3365`

<a id="function-function-mlc-minilang-parser-compile-value-type-function-compile-value-type-value-minilangcompilerml-mlc-minilang-parser-ml-803592586"></a>
### _compile_value_type

```ml
function _compile_value_type(value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3375`

<a id="function-function-mlc-minilang-parser-contains-function-contains-arr-value-minilangcompilerml-mlc-minilang-parser-ml-1548629449"></a>
### _contains

```ml
function _contains(arr, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arr` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2232`

<a id="function-function-mlc-minilang-parser-containsdot-function-containsdot-text-minilangcompilerml-mlc-minilang-parser-ml-1046335166"></a>
### _containsDot

```ml
function _containsDot(text)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1772`

<a id="function-function-mlc-minilang-parser-decode-string-raw-function-decode-string-raw-raw-pos-minilangcompilerml-mlc-minilang-parser-ml-730877613"></a>
### _decode_string_raw

```ml
function _decode_string_raw(raw, pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1361`

<a id="function-function-mlc-minilang-parser-decode-string-token-function-decode-string-token-tok-minilangcompilerml-mlc-minilang-parser-ml-93361047"></a>
### _decode_string_token

```ml
function _decode_string_token(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1437`

<a id="global-global-mlc-minilang-parser-errors-errors-minilangcompilerml-mlc-minilang-parser-ml-1039932625"></a>
### _errors

```ml
_errors
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1195`

<a id="function-function-mlc-minilang-parser-expect-block-nl-function-expect-block-nl-minilangcompilerml-mlc-minilang-parser-ml-842379001"></a>
### _expect_block_nl

```ml
function _expect_block_nl()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1985`

<a id="function-function-mlc-minilang-parser-expect-end-of-function-expect-end-of-what-minilangcompilerml-mlc-minilang-parser-ml-962433715"></a>
### _expect_end_of

```ml
function _expect_end_of(what)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `what` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1997`

<a id="function-function-mlc-minilang-parser-expect-kind-function-expect-kind-kind-minilangcompilerml-mlc-minilang-parser-ml-38837867"></a>
### _expect_kind

```ml
function _expect_kind(kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1300`

<a id="function-function-mlc-minilang-parser-expect-value-function-expect-value-kind-value-minilangcompilerml-mlc-minilang-parser-ml-623559138"></a>
### _expect_value

```ml
function _expect_value(kind, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1309`

<a id="global-global-mlc-minilang-parser-filename-filename-minilangcompilerml-mlc-minilang-parser-ml-1061373101"></a>
### _filename

```ml
_filename
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1186`

<a id="global-global-mlc-minilang-parser-func-depth-func-depth-minilangcompilerml-mlc-minilang-parser-ml-1847745633"></a>
### _func_depth

```ml
_func_depth
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1189`

<a id="function-function-mlc-minilang-parser-has-error-function-has-error-minilangcompilerml-mlc-minilang-parser-ml-1456915733"></a>
### _has_error

```ml
function _has_error()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1241`

<a id="global-global-mlc-minilang-parser-has-last-error-has-last-error-minilangcompilerml-mlc-minilang-parser-ml-557554465"></a>
### _has_last_error

```ml
_has_last_error
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1188`

<a id="function-function-mlc-minilang-parser-hex-value-function-hex-value-ch-minilangcompilerml-mlc-minilang-parser-ml-407500542"></a>
### _hex_value

```ml
function _hex_value(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1323`

<a id="global-global-mlc-minilang-parser-i-i-minilangcompilerml-mlc-minilang-parser-ml-1712485801"></a>
### _i

```ml
_i
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1184`

<a id="function-function-mlc-minilang-parser-is-allowed-type-name-function-is-allowed-type-name-ty-minilangcompilerml-mlc-minilang-parser-ml-23948888"></a>
### _is_allowed_type_name

```ml
function _is_allowed_type_name(ty)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ty` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1875`

<a id="function-function-mlc-minilang-parser-is-case-value-continuation-start-function-is-case-value-continuation-start-tok-minilangcompilerml-mlc-minilang-parser-ml-421035281"></a>
### _is_case_value_continuation_start

```ml
function _is_case_value_continuation_start(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2281`

<a id="function-function-mlc-minilang-parser-is-end-of-function-is-end-of-what-minilangcompilerml-mlc-minilang-parser-ml-1223339575"></a>
### _is_end_of

```ml
function _is_end_of(what)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `what` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1992`

<a id="function-function-mlc-minilang-parser-isalpha-function-isalpha-ch-minilangcompilerml-mlc-minilang-parser-ml-1859918210"></a>
### _isAlpha

```ml
function _isAlpha(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:581`

<a id="function-function-mlc-minilang-parser-isdigit-function-isdigit-ch-minilangcompilerml-mlc-minilang-parser-ml-1393263822"></a>
### _isDigit

```ml
function _isDigit(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:571`

<a id="function-function-mlc-minilang-parser-ishexdigit-function-ishexdigit-ch-minilangcompilerml-mlc-minilang-parser-ml-1902974932"></a>
### _isHexDigit

```ml
function _isHexDigit(ch)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:576`

<a id="function-function-mlc-minilang-parser-isidentpart-function-isidentpart-ch-as-string-returns-bool-minilangcompilerml-mlc-minilang-parser-ml-1684977854"></a>
### _isIdentPart

```ml
function _isIdentPart(ch as string) returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `string` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:590`

<a id="function-function-mlc-minilang-parser-isidentstart-function-isidentstart-ch-as-string-returns-bool-minilangcompilerml-mlc-minilang-parser-ml-219429168"></a>
### _isIdentStart

```ml
function _isIdentStart(ch as string) returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ch` | `string` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:586`

<a id="function-function-mlc-minilang-parser-iskeyword-function-iskeyword-word-minilangcompilerml-mlc-minilang-parser-ml-235007529"></a>
### _isKeyword

```ml
function _isKeyword(word)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `word` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:594`

<a id="global-global-mlc-minilang-parser-keywords-keywords-minilangcompilerml-mlc-minilang-parser-ml-667526585"></a>
### _keywords

```ml
_keywords
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:536`

<a id="function-function-mlc-minilang-parser-lang-add-unique-function-lang-add-unique-items-value-minilangcompilerml-mlc-minilang-parser-ml-580809428"></a>
### _lang_add_unique

```ml
function _lang_add_unique(items, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `items` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4202`

<a id="function-function-mlc-minilang-parser-lang-apply-contracts-function-lang-apply-contracts-fn-minilangcompilerml-mlc-minilang-parser-ml-1488065617"></a>
### _lang_apply_contracts

```ml
function _lang_apply_contracts(fn)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `fn` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4001`

<a id="function-function-mlc-minilang-parser-lang-apply-parameter-contracts-function-lang-apply-parameter-contracts-fn-minilangcompilerml-mlc-minilang-parser-ml-1420306705"></a>
### _lang_apply_parameter_contracts

```ml
function _lang_apply_parameter_contracts(fn)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `fn` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3979`

<a id="function-function-mlc-minilang-parser-lang-await-helper-function-lang-await-helper-minilangcompilerml-mlc-minilang-parser-ml-268071853"></a>
### _lang_await_helper

```ml
function _lang_await_helper()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4586`

<a id="function-function-mlc-minilang-parser-lang-call-function-lang-call-name-args-node-minilangcompilerml-mlc-minilang-parser-ml-1073077483"></a>
### _lang_call

```ml
function _lang_call(name, args, node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |
| `args` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3925`

<a id="function-function-mlc-minilang-parser-lang-collect-contracts-function-lang-collect-contracts-body-prefix-minilangcompilerml-mlc-minilang-parser-ml-308721177"></a>
### _lang_collect_contracts

```ml
function _lang_collect_contracts(body, prefix)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4781`

<a id="function-function-mlc-minilang-parser-lang-fail-function-lang-fail-message-minilangcompilerml-mlc-minilang-parser-ml-1765865714"></a>
### _lang_fail

```ml
function _lang_fail(message)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `message` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3902`

<a id="function-function-mlc-minilang-parser-lang-find-interface-function-lang-find-interface-raw-name-prefix-minilangcompilerml-mlc-minilang-parser-ml-1860084333"></a>
### _lang_find_interface

```ml
function _lang_find_interface(raw_name, prefix)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw_name` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4797`

<a id="function-function-mlc-minilang-parser-lang-fresh-function-lang-fresh-stem-minilangcompilerml-mlc-minilang-parser-ml-1930883648"></a>
### _lang_fresh

```ml
function _lang_fresh(stem)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `stem` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3907`

<a id="function-function-mlc-minilang-parser-lang-guard-returns-function-lang-guard-returns-body-return-type-return-optional-minilangcompilerml-mlc-minilang-parser-ml-832997273"></a>
### _lang_guard_returns

```ml
function _lang_guard_returns(body, return_type, return_optional)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |
| `return_type` | `dynamic` | — |  |
| `return_optional` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3932`

<a id="function-function-mlc-minilang-parser-lang-interface-signature-matches-function-lang-interface-signature-matches-required-actual-minilangcompilerml-mlc-minilang-parser-ml-1372006042"></a>
### _lang_interface_signature_matches

```ml
function _lang_interface_signature_matches(required, actual)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `required` | `dynamic` | — |  |
| `actual` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4816`

<a id="function-function-mlc-minilang-parser-lang-iterator-append-function-lang-iterator-append-yield-stmt-fn-names-minilangcompilerml-mlc-minilang-parser-ml-1055028655"></a>
### _lang_iterator_append

```ml
function _lang_iterator_append(yield_stmt, fn, names)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `yield_stmt` | `dynamic` | — |  |
| `fn` | `dynamic` | — |  |
| `names` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4098`

<a id="function-function-mlc-minilang-parser-lang-lazy-collect-names-function-lang-lazy-collect-names-state-body-minilangcompilerml-mlc-minilang-parser-ml-162923168"></a>
### _lang_lazy_collect_names

```ml
function _lang_lazy_collect_names(state, body)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `state` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4297`

<a id="function-function-mlc-minilang-parser-lang-lazy-compile-seq-function-lang-lazy-compile-seq-state-body-cont-break-target-continue-target-minilangcompilerml-mlc-minilang-parser-ml-474165766"></a>
### _lang_lazy_compile_seq

```ml
function _lang_lazy_compile_seq(state, body, cont, break_target, continue_target)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `state` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `cont` | `dynamic` | — |  |
| `break_target` | `dynamic` | — |  |
| `continue_target` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4341`

<a id="function-function-mlc-minilang-parser-lang-lazy-contains-yield-function-lang-lazy-contains-yield-st-minilangcompilerml-mlc-minilang-parser-ml-2030070074"></a>
### _lang_lazy_contains_yield

```ml
function _lang_lazy_contains_yield(st)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `st` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4243`

<a id="function-function-mlc-minilang-parser-lang-lazy-jump-function-lang-lazy-jump-state-target-node-minilangcompilerml-mlc-minilang-parser-ml-1468283343"></a>
### _lang_lazy_jump

```ml
function _lang_lazy_jump(state, target, node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `state` | `dynamic` | — |  |
| `target` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4236`

<a id="function-function-mlc-minilang-parser-lang-lazy-reserve-function-lang-lazy-reserve-state-minilangcompilerml-mlc-minilang-parser-ml-1801291548"></a>
### _lang_lazy_reserve

```ml
function _lang_lazy_reserve(state)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `state` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4231`

<a id="function-function-mlc-minilang-parser-lang-lower-async-function-lang-lower-async-fn-minilangcompilerml-mlc-minilang-parser-ml-1453169493"></a>
### _lang_lower_async

```ml
function _lang_lower_async(fn)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `fn` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4553`

<a id="function-function-mlc-minilang-parser-lang-lower-block-function-lang-lower-block-body-function-depth-minilangcompilerml-mlc-minilang-parser-ml-1770225785"></a>
### _lang_lower_block

```ml
function _lang_lower_block(body, function_depth)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |
| `function_depth` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4761`

<a id="function-function-mlc-minilang-parser-lang-lower-expr-function-lang-lower-expr-expr-prelude-minilangcompilerml-mlc-minilang-parser-ml-983834309"></a>
### _lang_lower_expr

```ml
function _lang_lower_expr(expr, prelude)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `expr` | `dynamic` | — |  |
| `prelude` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4007`

<a id="function-function-mlc-minilang-parser-lang-lower-iterator-function-lang-lower-iterator-fn-minilangcompilerml-mlc-minilang-parser-ml-1461286097"></a>
### _lang_lower_iterator

```ml
function _lang_lower_iterator(fn)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `fn` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4168`

<a id="function-function-mlc-minilang-parser-lang-lower-lazy-iterator-function-lang-lower-lazy-iterator-fn-minilangcompilerml-mlc-minilang-parser-ml-799070311"></a>
### _lang_lower_lazy_iterator

```ml
function _lang_lower_lazy_iterator(fn)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `fn` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4514`

<a id="function-function-mlc-minilang-parser-lang-lower-stmt-function-lang-lower-stmt-st-function-depth-minilangcompilerml-mlc-minilang-parser-ml-1314090568"></a>
### _lang_lower_stmt

```ml
function _lang_lower_stmt(st, function_depth)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `st` | `dynamic` | — |  |
| `function_depth` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4627`

<a id="function-function-mlc-minilang-parser-lang-num-function-lang-num-value-node-minilangcompilerml-mlc-minilang-parser-ml-1051182908"></a>
### _lang_num

```ml
function _lang_num(value, node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3917`

<a id="function-function-mlc-minilang-parser-lang-remove-interfaces-function-lang-remove-interfaces-body-minilangcompilerml-mlc-minilang-parser-ml-710179387"></a>
### _lang_remove_interfaces

```ml
function _lang_remove_interfaces(body)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4873`

<a id="function-function-mlc-minilang-parser-lang-rewrite-yields-function-lang-rewrite-yields-body-fn-names-minilangcompilerml-mlc-minilang-parser-ml-1945242637"></a>
### _lang_rewrite_yields

```ml
function _lang_rewrite_yields(body, fn, names)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |
| `fn` | `dynamic` | — |  |
| `names` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4125`

<a id="function-function-mlc-minilang-parser-lang-select-helper-function-lang-select-helper-minilangcompilerml-mlc-minilang-parser-ml-1309143347"></a>
### _lang_select_helper

```ml
function _lang_select_helper()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4600`

<a id="function-function-mlc-minilang-parser-lang-sort-strings-function-lang-sort-strings-items-minilangcompilerml-mlc-minilang-parser-ml-1960670917"></a>
### _lang_sort_strings

```ml
function _lang_sort_strings(items)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `items` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4207`

<a id="function-function-mlc-minilang-parser-lang-validate-interfaces-function-lang-validate-interfaces-program-minilangcompilerml-mlc-minilang-parser-ml-238702483"></a>
### _lang_validate_interfaces

```ml
function _lang_validate_interfaces(program)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `program` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4838`

<a id="function-function-mlc-minilang-parser-lang-var-function-lang-var-name-node-minilangcompilerml-mlc-minilang-parser-ml-781338220"></a>
### _lang_var

```ml
function _lang_var(name, node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3913`

<a id="function-function-mlc-minilang-parser-lang-void-function-lang-void-node-minilangcompilerml-mlc-minilang-parser-ml-1560133821"></a>
### _lang_void

```ml
function _lang_void(node)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3921`

<a id="global-global-mlc-minilang-parser-language-async-pool-name-language-async-pool-name-minilangcompilerml-mlc-minilang-parser-ml-1798353021"></a>
### _language_async_pool_name

```ml
_language_async_pool_name
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3895`

<a id="global-global-mlc-minilang-parser-language-await-file-language-await-file-minilangcompilerml-mlc-minilang-parser-ml-821386643"></a>
### _language_await_file

```ml
_language_await_file
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3897`

<a id="global-global-mlc-minilang-parser-language-await-pos-language-await-pos-minilangcompilerml-mlc-minilang-parser-ml-1627971749"></a>
### _language_await_pos

```ml
_language_await_pos
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3896`

<a id="global-global-mlc-minilang-parser-language-failure-language-failure-minilangcompilerml-mlc-minilang-parser-ml-2033500497"></a>
### _language_failure

```ml
_language_failure
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3900`

<a id="global-global-mlc-minilang-parser-language-interfaces-language-interfaces-minilangcompilerml-mlc-minilang-parser-ml-1961161793"></a>
### _language_interfaces

```ml
_language_interfaces
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4778`

<a id="global-global-mlc-minilang-parser-language-needs-async-pool-language-needs-async-pool-minilangcompilerml-mlc-minilang-parser-ml-441608183"></a>
### _language_needs_async_pool

```ml
_language_needs_async_pool
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3894`

<a id="global-global-mlc-minilang-parser-language-needs-await-language-needs-await-minilangcompilerml-mlc-minilang-parser-ml-103597957"></a>
### _language_needs_await

```ml
_language_needs_await
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3892`

<a id="global-global-mlc-minilang-parser-language-needs-select-language-needs-select-minilangcompilerml-mlc-minilang-parser-ml-1630449037"></a>
### _language_needs_select

```ml
_language_needs_select
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3893`

<a id="global-global-mlc-minilang-parser-language-select-file-language-select-file-minilangcompilerml-mlc-minilang-parser-ml-1201963221"></a>
### _language_select_file

```ml
_language_select_file
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3899`

<a id="global-global-mlc-minilang-parser-language-select-pos-language-select-pos-minilangcompilerml-mlc-minilang-parser-ml-88381023"></a>
### _language_select_pos

```ml
_language_select_pos
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3898`

<a id="global-global-mlc-minilang-parser-language-serial-language-serial-minilangcompilerml-mlc-minilang-parser-ml-380952433"></a>
### _language_serial

```ml
_language_serial
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3891`

<a id="global-global-mlc-minilang-parser-language-structs-language-structs-minilangcompilerml-mlc-minilang-parser-ml-1873037937"></a>
### _language_structs

```ml
_language_structs
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4779`

<a id="global-global-mlc-minilang-parser-last-error-last-error-minilangcompilerml-mlc-minilang-parser-ml-1138888861"></a>
### _last_error

```ml
_last_error
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1187`

<a id="function-function-mlc-minilang-parser-line-col-function-line-col-source-pos-minilangcompilerml-mlc-minilang-parser-ml-1176500788"></a>
### _line_col

```ml
function _line_col(source, pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1145`

<a id="function-function-mlc-minilang-parser-match-kind-function-match-kind-kind-minilangcompilerml-mlc-minilang-parser-ml-128281981"></a>
### _match_kind

```ml
function _match_kind(kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1285`

<a id="function-function-mlc-minilang-parser-match-number-has-dot-function-match-number-has-dot-text-minilangcompilerml-mlc-minilang-parser-ml-1535711060"></a>
### _match_number_has_dot

```ml
function _match_number_has_dot(text)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1764`

<a id="function-function-mlc-minilang-parser-match-value-function-match-value-kind-value-minilangcompilerml-mlc-minilang-parser-ml-220806262"></a>
### _match_value

```ml
function _match_value(kind, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1292`

<a id="global-global-mlc-minilang-parser-max-errors-max-errors-minilangcompilerml-mlc-minilang-parser-ml-783166701"></a>
### _max_errors

```ml
_max_errors
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1194`

<a id="function-function-mlc-minilang-parser-new-function-node-function-new-function-node-name-params-body-is-static-is-inline-is-synchronized-param-types-param-optional-param-defaults-variadic-index-return-type-return-optional-is-async-is-iterator-pos-filename-minilangcompilerml-mlc-minilang-parser-ml-2079664212"></a>
### _new_function_node

```ml
function _new_function_node(name, params, body, is_static, is_inline, is_synchronized, param_types, param_optional, param_defaults, variadic_index, return_type, return_optional, is_async, is_iterator, pos, filename)
```

Keep compiler-internal closure fields centralized when surface syntax creates ordinary, lambda, iterator or async functions.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |
| `params` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `is_static` | `dynamic` | — |  |
| `is_inline` | `dynamic` | — |  |
| `is_synchronized` | `dynamic` | — |  |
| `param_types` | `dynamic` | — |  |
| `param_optional` | `dynamic` | — |  |
| `param_defaults` | `dynamic` | — |  |
| `variadic_index` | `dynamic` | — |  |
| `return_type` | `dynamic` | — |  |
| `return_optional` | `dynamic` | — |  |
| `is_async` | `dynamic` | — |  |
| `is_iterator` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:554`

<a id="global-global-mlc-minilang-parser-ns-depth-ns-depth-minilangcompilerml-mlc-minilang-parser-ml-1548915953"></a>
### _ns_depth

```ml
_ns_depth
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1190`

<a id="function-function-mlc-minilang-parser-parse-base-int-function-parse-base-int-raw-start-index-base-minilangcompilerml-mlc-minilang-parser-ml-1836200633"></a>
### _parse_base_int

```ml
function _parse_base_int(raw, start_index, base)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — |  |
| `start_index` | `dynamic` | — |  |
| `base` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1447`

<a id="function-function-mlc-minilang-parser-parse-block-until-function-parse-block-until-stop-keywords-end-type-start-pos-minilangcompilerml-mlc-minilang-parser-ml-680458869"></a>
### _parse_block_until

```ml
function _parse_block_until(stop_keywords, end_type, start_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `stop_keywords` | `dynamic` | — |  |
| `end_type` | `dynamic` | — |  |
| `start_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2294`

<a id="function-function-mlc-minilang-parser-parse-block-until-end-function-parse-block-until-end-end-type-start-pos-minilangcompilerml-mlc-minilang-parser-ml-1471849366"></a>
### _parse_block_until_end

```ml
function _parse_block_until_end(end_type, start_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `end_type` | `dynamic` | — |  |
| `start_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2199`

<a id="function-function-mlc-minilang-parser-parse-call-arguments-function-parse-call-arguments-minilangcompilerml-mlc-minilang-parser-ml-1510038125"></a>
### _parse_call_arguments

```ml
function _parse_call_arguments()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1725`

<a id="function-function-mlc-minilang-parser-parse-dotted-name-function-parse-dotted-name-minilangcompilerml-mlc-minilang-parser-ml-1137770145"></a>
### _parse_dotted_name

```ml
function _parse_dotted_name()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2009`

<a id="function-function-mlc-minilang-parser-parse-expr-function-parse-expr-min-prec-minilangcompilerml-mlc-minilang-parser-ml-1571191574"></a>
### _parse_expr

```ml
function _parse_expr(min_prec)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `min_prec` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1879`

<a id="function-function-mlc-minilang-parser-parse-expr-list-function-parse-expr-list-end-kind-minilangcompilerml-mlc-minilang-parser-ml-1242415629"></a>
### _parse_expr_list

```ml
function _parse_expr_list(end_kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `end_kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1488`

<a id="function-function-mlc-minilang-parser-parse-extern-param-function-parse-extern-param-minilangcompilerml-mlc-minilang-parser-ml-1946977611"></a>
### _parse_extern_param

```ml
function _parse_extern_param()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2033`

<a id="function-function-mlc-minilang-parser-parse-extern-param-list-function-parse-extern-param-list-end-kind-minilangcompilerml-mlc-minilang-parser-ml-2052103229"></a>
### _parse_extern_param_list

```ml
function _parse_extern_param_list(end_kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `end_kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2058`

<a id="function-function-mlc-minilang-parser-parse-float-literal-function-parse-float-literal-raw-minilangcompilerml-mlc-minilang-parser-ml-1170781923"></a>
### _parse_float_literal

```ml
function _parse_float_literal(raw)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1467`

<a id="function-function-mlc-minilang-parser-parse-ident-list-function-parse-ident-list-end-kind-minilangcompilerml-mlc-minilang-parser-ml-445916813"></a>
### _parse_ident_list

```ml
function _parse_ident_list(end_kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `end_kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1953`

<a id="function-function-mlc-minilang-parser-parse-int-literal-function-parse-int-literal-raw-minilangcompilerml-mlc-minilang-parser-ml-727662087"></a>
### _parse_int_literal

```ml
function _parse_int_literal(raw)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `raw` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1457`

<a id="function-function-mlc-minilang-parser-parse-namespace-def-function-parse-namespace-def-start-pos-minilangcompilerml-mlc-minilang-parser-ml-1149965924"></a>
### _parse_namespace_def

```ml
function _parse_namespace_def(start_pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2082`

<a id="function-function-mlc-minilang-parser-parse-parameter-list-function-parse-parameter-list-minilangcompilerml-mlc-minilang-parser-ml-809909783"></a>
### _parse_parameter_list

```ml
function _parse_parameter_list()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1646`

<a id="function-function-mlc-minilang-parser-parse-postfix-function-parse-postfix-minilangcompilerml-mlc-minilang-parser-ml-684516029"></a>
### _parse_postfix

```ml
function _parse_postfix()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1780`

<a id="function-function-mlc-minilang-parser-parse-primary-function-parse-primary-minilangcompilerml-mlc-minilang-parser-ml-408341141"></a>
### _parse_primary

```ml
function _parse_primary()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1512`

<a id="function-function-mlc-minilang-parser-parse-stmt-function-parse-stmt-minilangcompilerml-mlc-minilang-parser-ml-329034671"></a>
### _parse_stmt

```ml
function _parse_stmt()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2333`

<a id="function-function-mlc-minilang-parser-parse-stmt-break-function-parse-stmt-break-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-840399536"></a>
### _parse_stmt_break

```ml
function _parse_stmt_break(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2534`

<a id="function-function-mlc-minilang-parser-parse-stmt-const-function-parse-stmt-const-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-160514552"></a>
### _parse_stmt_const

```ml
function _parse_stmt_const(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2490`

<a id="function-function-mlc-minilang-parser-parse-stmt-continue-function-parse-stmt-continue-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1397386490"></a>
### _parse_stmt_continue

```ml
function _parse_stmt_continue(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2547`

<a id="function-function-mlc-minilang-parser-parse-stmt-defer-function-parse-stmt-defer-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-536376706"></a>
### _parse_stmt_defer

```ml
function _parse_stmt_defer(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2611`

<a id="function-function-mlc-minilang-parser-parse-stmt-enum-function-parse-stmt-enum-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-579987126"></a>
### _parse_stmt_enum

```ml
function _parse_stmt_enum(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2921`

<a id="function-function-mlc-minilang-parser-parse-stmt-extern-function-parse-stmt-extern-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-987093058"></a>
### _parse_stmt_extern

```ml
function _parse_stmt_extern(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2627`

<a id="function-function-mlc-minilang-parser-parse-stmt-for-function-parse-stmt-for-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1575876520"></a>
### _parse_stmt_for

```ml
function _parse_stmt_for(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3235`

<a id="function-function-mlc-minilang-parser-parse-stmt-function-function-parse-stmt-function-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1333033642"></a>
### _parse_stmt_function

```ml
function _parse_stmt_function(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2992`

<a id="function-function-mlc-minilang-parser-parse-stmt-global-function-parse-stmt-global-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-202542658"></a>
### _parse_stmt_global

```ml
function _parse_stmt_global(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2553`

<a id="function-function-mlc-minilang-parser-parse-stmt-ident-function-parse-stmt-ident-start-pos-first-tok-minilangcompilerml-mlc-minilang-parser-ml-1802852765"></a>
### _parse_stmt_ident

```ml
function _parse_stmt_ident(start_pos, first_tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `first_tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3271`

<a id="function-function-mlc-minilang-parser-parse-stmt-if-function-parse-stmt-if-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-542940754"></a>
### _parse_stmt_if

```ml
function _parse_stmt_if(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3184`

<a id="function-function-mlc-minilang-parser-parse-stmt-import-function-parse-stmt-import-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1318120422"></a>
### _parse_stmt_import

```ml
function _parse_stmt_import(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2462`

<a id="function-function-mlc-minilang-parser-parse-stmt-interface-function-parse-stmt-interface-start-pos-tok-minilangcompilerml-mlc-minilang-parser-ml-639823674"></a>
### _parse_stmt_interface

```ml
function _parse_stmt_interface(start_pos, tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2717`

<a id="function-function-mlc-minilang-parser-parse-stmt-loop-function-parse-stmt-loop-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1014868282"></a>
### _parse_stmt_loop

```ml
function _parse_stmt_loop(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3046`

<a id="function-function-mlc-minilang-parser-parse-stmt-namespace-function-parse-stmt-namespace-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1683993208"></a>
### _parse_stmt_namespace

```ml
function _parse_stmt_namespace(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2457`

<a id="function-function-mlc-minilang-parser-parse-stmt-package-function-parse-stmt-package-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-358914054"></a>
### _parse_stmt_package

```ml
function _parse_stmt_package(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2436`

<a id="function-function-mlc-minilang-parser-parse-stmt-print-function-parse-stmt-print-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1781536424"></a>
### _parse_stmt_print

```ml
function _parse_stmt_print(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2526`

<a id="function-function-mlc-minilang-parser-parse-stmt-recover-function-parse-stmt-recover-stop-keywords-end-type-minilangcompilerml-mlc-minilang-parser-ml-1717741034"></a>
### _parse_stmt_recover

```ml
function _parse_stmt_recover(stop_keywords, end_type)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `stop_keywords` | `dynamic` | — |  |
| `end_type` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3314`

<a id="function-function-mlc-minilang-parser-parse-stmt-return-function-parse-stmt-return-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1149785234"></a>
### _parse_stmt_return

```ml
function _parse_stmt_return(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2580`

<a id="function-function-mlc-minilang-parser-parse-stmt-struct-function-parse-stmt-struct-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1144118178"></a>
### _parse_stmt_struct

```ml
function _parse_stmt_struct(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2763`

<a id="function-function-mlc-minilang-parser-parse-stmt-switch-function-parse-stmt-switch-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1791539466"></a>
### _parse_stmt_switch

```ml
function _parse_stmt_switch(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3093`

<a id="function-function-mlc-minilang-parser-parse-stmt-synchronized-function-parse-stmt-synchronized-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-108755826"></a>
### _parse_stmt_synchronized

```ml
function _parse_stmt_synchronized(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2502`

<a id="function-function-mlc-minilang-parser-parse-stmt-while-function-parse-stmt-while-start-pos-t-minilangcompilerml-mlc-minilang-parser-ml-1373698924"></a>
### _parse_stmt_while

```ml
function _parse_stmt_while(start_pos, t)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `t` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3222`

<a id="function-function-mlc-minilang-parser-parse-stmt-yield-function-parse-stmt-yield-start-pos-tok-minilangcompilerml-mlc-minilang-parser-ml-888801386"></a>
### _parse_stmt_yield

```ml
function _parse_stmt_yield(start_pos, tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `start_pos` | `dynamic` | — |  |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2595`

<a id="extern_function-extern-function-mlc-minilang-parser-parse-strtod-extern-function-parse-strtod-text-as-cstr-endptr-as-ptr-from-msvcrt-dll-symbol-strtod-returns-double-minilangcompilerml-mlc-minilang-parser-ml-1934288757"></a>
### _parse_strtod

```ml
extern function _parse_strtod(text as cstr, endptr as ptr) from "msvcrt.dll" symbol "strtod" returns double
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `cstr` | — |  |
| `endptr` | `ptr` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:8`

<a id="function-function-mlc-minilang-parser-parse-type-ref-function-parse-type-ref-minilangcompilerml-mlc-minilang-parser-ml-1358483047"></a>
### _parse_type_ref

```ml
function _parse_type_ref()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1630`

<a id="function-function-mlc-minilang-parser-parse-unary-function-parse-unary-minilangcompilerml-mlc-minilang-parser-ml-87509777"></a>
### _parse_unary

```ml
function _parse_unary()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1830`

<a id="function-function-mlc-minilang-parser-parser-chunk-tail-from-array-function-parser-chunk-tail-from-array-arr-cap-minilangcompilerml-mlc-minilang-parser-ml-951041476"></a>
### _parser_chunk_tail_from_array

```ml
function _parser_chunk_tail_from_array(arr, cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arr` | `dynamic` | — |  |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:647`

<a id="function-function-mlc-minilang-parser-parser-chunk-tail-len-function-parser-chunk-tail-len-tail-minilangcompilerml-mlc-minilang-parser-ml-1359865071"></a>
### _parser_chunk_tail_len

```ml
function _parser_chunk_tail_len(tail)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:659`

<a id="function-function-mlc-minilang-parser-parser-chunk-tail-new-function-parser-chunk-tail-new-cap-minilangcompilerml-mlc-minilang-parser-ml-1521192125"></a>
### _parser_chunk_tail_new

```ml
function _parser_chunk_tail_new(cap)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `cap` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:641`

<a id="function-function-mlc-minilang-parser-parser-chunk-tail-to-array-function-parser-chunk-tail-to-array-tail-minilangcompilerml-mlc-minilang-parser-ml-1207208081"></a>
### _parser_chunk_tail_to_array

```ml
function _parser_chunk_tail_to_array(tail)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tail` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:670`

<a id="function-function-mlc-minilang-parser-parser-chunk-unwrap-value-function-parser-chunk-unwrap-value-value-minilangcompilerml-mlc-minilang-parser-ml-1528178764"></a>
### _parser_chunk_unwrap_value

```ml
function _parser_chunk_unwrap_value(value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:631`

<a id="global-global-mlc-minilang-parser-parser-chunk-void-sentinel-parser-chunk-void-sentinel-minilangcompilerml-mlc-minilang-parser-ml-2020215101"></a>
### _parser_chunk_void_sentinel

```ml
_parser_chunk_void_sentinel
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:622`

<a id="function-function-mlc-minilang-parser-parser-chunk-wrap-value-function-parser-chunk-wrap-value-value-minilangcompilerml-mlc-minilang-parser-ml-19660456"></a>
### _parser_chunk_wrap_value

```ml
function _parser_chunk_wrap_value(value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:624`

<a id="function-function-mlc-minilang-parser-peek-function-peek-minilangcompilerml-mlc-minilang-parser-ml-486365101"></a>
### _peek

```ml
function _peek()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1262`

<a id="function-function-mlc-minilang-parser-peek2-function-peek2-minilangcompilerml-mlc-minilang-parser-ml-1292472453"></a>
### _peek2

```ml
function _peek2()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1270`

<a id="function-function-mlc-minilang-parser-peek3-function-peek3-minilangcompilerml-mlc-minilang-parser-ml-81420193"></a>
### _peek3

```ml
function _peek3()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1429`

<a id="function-function-mlc-minilang-parser-peek-non-nl-function-peek-non-nl-minilangcompilerml-mlc-minilang-parser-ml-529996581"></a>
### _peek_non_nl

```ml
function _peek_non_nl()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2021`

<a id="function-function-mlc-minilang-parser-precedence-function-precedence-op-minilangcompilerml-mlc-minilang-parser-ml-1378184908"></a>
### _precedence

```ml
function _precedence(op)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `op` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1473`

<a id="function-function-mlc-minilang-parser-record-error-function-record-error-err-minilangcompilerml-mlc-minilang-parser-ml-1803516472"></a>
### _record_error

```ml
function _record_error(err)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `err` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2240`

<a id="function-function-mlc-minilang-parser-repeat-function-repeat-text-n-minilangcompilerml-mlc-minilang-parser-ml-384929346"></a>
### _repeat

```ml
function _repeat(text, n)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |
| `n` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1133`

<a id="function-function-mlc-minilang-parser-replacedotswithslash-function-replacedotswithslash-name-minilangcompilerml-mlc-minilang-parser-ml-1385968198"></a>
### _replaceDotsWithSlash

```ml
function _replaceDotsWithSlash(name)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3331`

<a id="function-function-mlc-minilang-parser-reset-function-reset-tokens-source-filename-collect-errors-max-errors-minilangcompilerml-mlc-minilang-parser-ml-2022654723"></a>
### _reset

```ml
function _reset(tokens, source, filename, collect_errors, max_errors)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tokens` | `dynamic` | — |  |
| `source` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `collect_errors` | `dynamic` | — |  |
| `max_errors` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1246`

<a id="global-global-mlc-minilang-parser-seen-nonpackage-toplevel-stmt-seen-nonpackage-toplevel-stmt-minilangcompilerml-mlc-minilang-parser-ml-1521947207"></a>
### _seen_nonpackage_toplevel_stmt

```ml
_seen_nonpackage_toplevel_stmt
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1192`

<a id="global-global-mlc-minilang-parser-seen-package-seen-package-minilangcompilerml-mlc-minilang-parser-ml-1171493141"></a>
### _seen_package

```ml
_seen_package
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1191`

<a id="function-function-mlc-minilang-parser-set-error-function-set-error-message-pos-minilangcompilerml-mlc-minilang-parser-ml-1661465462"></a>
### _set_error

```ml
function _set_error(message, pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `message` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1228`

<a id="function-function-mlc-minilang-parser-skip-newlines-function-skip-newlines-minilangcompilerml-mlc-minilang-parser-ml-1092173325"></a>
### _skip_newlines

```ml
function _skip_newlines()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1318`

<a id="function-function-mlc-minilang-parser-skip-stmt-seps-function-skip-stmt-seps-minilangcompilerml-mlc-minilang-parser-ml-969609871"></a>
### _skip_stmt_seps

```ml
function _skip_stmt_seps()
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1977`

<a id="global-global-mlc-minilang-parser-source-source-minilangcompilerml-mlc-minilang-parser-ml-1365660565"></a>
### _source

```ml
_source
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1185`

<a id="function-function-mlc-minilang-parser-substr-function-substr-text-start-length-minilangcompilerml-mlc-minilang-parser-ml-1511464016"></a>
### _substr

```ml
function _substr(text, start, length)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `text` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |
| `length` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:558`

<a id="function-function-mlc-minilang-parser-sync-stmt-function-sync-stmt-stop-keywords-end-type-minilangcompilerml-mlc-minilang-parser-ml-2077102590"></a>
### _sync_stmt

```ml
function _sync_stmt(stop_keywords, end_type)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `stop_keywords` | `dynamic` | — |  |
| `end_type` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:2247`

<a id="function-function-mlc-minilang-parser-tok-desc-function-tok-desc-tok-minilangcompilerml-mlc-minilang-parser-ml-1902109385"></a>
### _tok_desc

```ml
function _tok_desc(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:50`

<a id="function-function-mlc-minilang-parser-tok-kind-function-tok-kind-tok-minilangcompilerml-mlc-minilang-parser-ml-501963151"></a>
### _tok_kind

```ml
function _tok_kind(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1207`

<a id="function-function-mlc-minilang-parser-tok-kind-id-inline-function-tok-kind-id-tok-minilangcompilerml-mlc-minilang-parser-ml-1363932986"></a>
### _tok_kind_id

```ml
inline function _tok_kind_id(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1201`

<a id="function-function-mlc-minilang-parser-tok-pos-inline-function-tok-pos-tok-minilangcompilerml-mlc-minilang-parser-ml-2022454042"></a>
### _tok_pos

```ml
inline function _tok_pos(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1222`

<a id="function-function-mlc-minilang-parser-tok-text-part-function-tok-text-part-v-minilangcompilerml-mlc-minilang-parser-ml-652435639"></a>
### _tok_text_part

```ml
function _tok_text_part(v)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `v` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:40`

<a id="function-function-mlc-minilang-parser-tok-value-inline-function-tok-value-tok-minilangcompilerml-mlc-minilang-parser-ml-1603082116"></a>
### _tok_value

```ml
inline function _tok_value(tok)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tok` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1211`

<a id="function-function-mlc-minilang-parser-token-arena-grow-function-token-arena-grow-arena-minilangcompilerml-mlc-minilang-parser-ml-731723802"></a>
### _token_arena_grow

```ml
function _token_arena_grow(arena)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arena` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:877`

<a id="function-function-mlc-minilang-parser-token-arena-new-function-token-arena-new-source-len-minilangcompilerml-mlc-minilang-parser-ml-1069612928"></a>
### _token_arena_new

```ml
function _token_arena_new(source_len)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source_len` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:815`

<a id="function-function-mlc-minilang-parser-token-count-inline-function-token-count-tokens-minilangcompilerml-mlc-minilang-parser-ml-1132863616"></a>
### _token_count

```ml
inline function _token_count(tokens)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tokens` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1197`

<a id="function-function-mlc-minilang-parser-token-fixed-value-inline-function-token-fixed-value-kind-minilangcompilerml-mlc-minilang-parser-ml-1523870426"></a>
### _token_fixed_value

```ml
inline function _token_fixed_value(kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:865`

<a id="function-function-mlc-minilang-parser-token-kind-name-function-token-kind-name-kind-id-minilangcompilerml-mlc-minilang-parser-ml-477449019"></a>
### _token_kind_name

```ml
function _token_kind_name(kind_id)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind_id` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:797`

<a id="function-function-mlc-minilang-parser-token-pos-read-inline-function-token-pos-read-buf-index-minilangcompilerml-mlc-minilang-parser-ml-1523704779"></a>
### _token_pos_read

```ml
inline function _token_pos_read(buf, index)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:841`

<a id="function-function-mlc-minilang-parser-token-pos-write-function-token-pos-write-buf-index-value-minilangcompilerml-mlc-minilang-parser-ml-2113832969"></a>
### _token_pos_write

```ml
function _token_pos_write(buf, index, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:837`

<a id="function-function-mlc-minilang-parser-token-push-function-token-push-arena-tail-kind-value-pos-minilangcompilerml-mlc-minilang-parser-ml-690499021"></a>
### _token_push

```ml
function _token_push(arena, tail, kind, value, pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arena` | `dynamic` | — |  |
| `tail` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:894`

<a id="function-function-mlc-minilang-parser-token-text-store-function-token-text-store-arena-kind-value-minilangcompilerml-mlc-minilang-parser-ml-1071984243"></a>
### _token_text_store

```ml
function _token_text_store(arena, kind, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `arena` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:845`

<a id="function-function-mlc-minilang-parser-token-u32-read-inline-function-token-u32-read-buf-index-minilangcompilerml-mlc-minilang-parser-ml-275605211"></a>
### _token_u32_read

```ml
inline function _token_u32_read(buf, index)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:832`

<a id="function-function-mlc-minilang-parser-token-u32-write-function-token-u32-write-buf-index-value-minilangcompilerml-mlc-minilang-parser-ml-1620438873"></a>
### _token_u32_write

```ml
function _token_u32_write(buf, index, value)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:824`

<a id="global-global-mlc-minilang-parser-tokens-tokens-minilangcompilerml-mlc-minilang-parser-ml-1749249373"></a>
### _tokens

```ml
_tokens
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1183`

<a id="function-function-mlc-minilang-parser-unknownchar-function-unknownchar-code-pos-minilangcompilerml-mlc-minilang-parser-ml-698266320"></a>
### _unknownChar

```ml
function _unknownChar(code, pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `code` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:603`

- [mlc.minilang_parser.ArrayLit](Type-mlc-minilang-parser-arraylit-656474808.md) — struct
- [mlc.minilang_parser.Assign](Type-mlc-minilang-parser-assign-1007761259.md) — struct
- [mlc.minilang_parser.Bin](Type-mlc-minilang-parser-bin-1998589439.md) — struct
- [mlc.minilang_parser.Bool](Type-mlc-minilang-parser-bool-603315534.md) — struct
- [mlc.minilang_parser.Break](Type-mlc-minilang-parser-break-1655790281.md) — struct
- [mlc.minilang_parser.Call](Type-mlc-minilang-parser-call-1897501670.md) — struct
- [mlc.minilang_parser.CallArguments](Type-mlc-minilang-parser-callarguments-1742386262.md) — struct
- [mlc.minilang_parser.Coalesce](Type-mlc-minilang-parser-coalesce-494772053.md) — struct
- [mlc.minilang_parser.CompileFrame](Type-mlc-minilang-parser-compileframe-374349488.md) — struct
- [mlc.minilang_parser.CompileValue](Type-mlc-minilang-parser-compilevalue-2038743176.md) — struct
- [mlc.minilang_parser.ConstDecl](Type-mlc-minilang-parser-constdecl-754746585.md) — struct
- [mlc.minilang_parser.Continue](Type-mlc-minilang-parser-continue-985699467.md) — struct
- [mlc.minilang_parser.Defer](Type-mlc-minilang-parser-defer-1019681826.md) — struct
- [mlc.minilang_parser.DeferredCapture](Type-mlc-minilang-parser-deferredcapture-1728292781.md) — struct
- [mlc.minilang_parser.DoWhile](Type-mlc-minilang-parser-dowhile-251897496.md) — struct
- [mlc.minilang_parser.EnumDef](Type-mlc-minilang-parser-enumdef-15919810.md) — struct
- [mlc.minilang_parser.ExprStmt](Type-mlc-minilang-parser-exprstmt-450737835.md) — struct
- [mlc.minilang_parser.ExternFunctionDef](Type-mlc-minilang-parser-externfunctiondef-1997863891.md) — struct
- [mlc.minilang_parser.ExternParam](Type-mlc-minilang-parser-externparam-1182507013.md) — struct
- [mlc.minilang_parser.For](Type-mlc-minilang-parser-for-1070243377.md) — struct
- [mlc.minilang_parser.ForEach](Type-mlc-minilang-parser-foreach-1349937804.md) — struct
<a id="function-function-mlc-minilang-parser-format-error-function-format-error-source-filename-pos-message-kind-minilangcompilerml-mlc-minilang-parser-ml-1925406706"></a>
### format_error

```ml
function format_error(source, filename, pos, message, kind)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |
| `message` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:1161`

- [mlc.minilang_parser.FunctionDef](Type-mlc-minilang-parser-functiondef-216648509.md) — struct
- [mlc.minilang_parser.GlobalDecl](Type-mlc-minilang-parser-globaldecl-403376821.md) — struct
- [mlc.minilang_parser.If](Type-mlc-minilang-parser-if-362822741.md) — struct
- [mlc.minilang_parser.Import](Type-mlc-minilang-parser-import-1360417695.md) — struct
- [mlc.minilang_parser.Index](Type-mlc-minilang-parser-index-874095030.md) — struct
- [mlc.minilang_parser.InterfaceDef](Type-mlc-minilang-parser-interfacedef-539778880.md) — struct
- [mlc.minilang_parser.IsType](Type-mlc-minilang-parser-istype-489143510.md) — struct
- [mlc.minilang_parser.Lambda](Type-mlc-minilang-parser-lambda-1603308297.md) — struct
- [mlc.minilang_parser.LazyIteratorState](Type-mlc-minilang-parser-lazyiteratorstate-395155783.md) — struct
- [mlc.minilang_parser.Member](Type-mlc-minilang-parser-member-2130365468.md) — struct
- [mlc.minilang_parser.NamespaceDecl](Type-mlc-minilang-parser-namespacedecl-283089097.md) — struct
- [mlc.minilang_parser.NamespaceDef](Type-mlc-minilang-parser-namespacedef-1316150784.md) — struct
<a id="function-function-mlc-minilang-parser-newparseerror-function-newparseerror-message-pos-filename-minilangcompilerml-mlc-minilang-parser-ml-203457013"></a>
### newParseError

```ml
function newParseError(message, pos, filename)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `message` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:548`

<a id="function-function-mlc-minilang-parser-newtoken-function-newtoken-kind-value-pos-minilangcompilerml-mlc-minilang-parser-ml-1953334566"></a>
### newToken

```ml
function newToken(kind, value, pos)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |
| `pos` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:544`

- [mlc.minilang_parser.Num](Type-mlc-minilang-parser-num-328799274.md) — struct
- [mlc.minilang_parser.ParameterList](Type-mlc-minilang-parser-parameterlist-241020273.md) — struct
<a id="function-function-mlc-minilang-parser-parse-expression-function-parse-expression-source-filename-minilangcompilerml-mlc-minilang-parser-ml-1643565713"></a>
### parse_expression

```ml
function parse_expression(source, filename)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3344`

<a id="function-function-mlc-minilang-parser-parse-program-function-parse-program-source-filename-minilangcompilerml-mlc-minilang-parser-ml-698408549"></a>
### parse_program

```ml
function parse_program(source, filename)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4921`

<a id="function-function-mlc-minilang-parser-parse-program-keepgoing-function-parse-program-keepgoing-source-filename-max-errors-minilangcompilerml-mlc-minilang-parser-ml-129271293"></a>
### parse_program_keepgoing

```ml
function parse_program_keepgoing(source, filename, max_errors)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |
| `max_errors` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4945`

- [mlc.minilang_parser.ParseError](Type-mlc-minilang-parser-parseerror-782081393.md) — struct
- [mlc.minilang_parser.ParseKeepResult](Type-mlc-minilang-parser-parsekeepresult-1025636913.md) — struct
- [mlc.minilang_parser.ParserChunkTail](Type-mlc-minilang-parser-parserchunktail-1446198500.md) — struct
- [mlc.minilang_parser.ParserChunkVoidSentinel](Type-mlc-minilang-parser-parserchunkvoidsentinel-1142311564.md) — struct
<a id="function-function-mlc-minilang-parser-prepare-language-features-function-prepare-language-features-program-minilangcompilerml-mlc-minilang-parser-ml-2040039977"></a>
### prepare_language_features

```ml
function prepare_language_features(program)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `program` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:4885`

<a id="function-function-mlc-minilang-parser-preprocess-compile-directives-function-preprocess-compile-directives-code-filename-minilangcompilerml-mlc-minilang-parser-ml-1267470751"></a>
### preprocess_compile_directives

```ml
function preprocess_compile_directives(code, filename)
```

Evaluate line-oriented directives and retain every original byte offset.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `code` | `dynamic` | — |  |
| `filename` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3752`

- [mlc.minilang_parser.Print](Type-mlc-minilang-parser-print-631789685.md) — struct
- [mlc.minilang_parser.Return](Type-mlc-minilang-parser-return-1467374892.md) — struct
- [mlc.minilang_parser.SafeMember](Type-mlc-minilang-parser-safemember-1978010909.md) — struct
<a id="function-function-mlc-minilang-parser-set-compile-defines-function-set-compile-defines-specs-minilangcompilerml-mlc-minilang-parser-ml-399980531"></a>
### set_compile_defines

```ml
function set_compile_defines(specs)
```

Install command-line/project values. Later -D occurrences override earlier ones.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `specs` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3606`

<a id="function-function-mlc-minilang-parser-set-compile-target-function-set-compile-target-target-minilangcompilerml-mlc-minilang-parser-ml-1112129288"></a>
### set_compile_target

```ml
function set_compile_target(target)
```

Select immutable values for subsequent source parses.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `target` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:3426`

- [mlc.minilang_parser.SetIndex](Type-mlc-minilang-parser-setindex-553174214.md) — struct
- [mlc.minilang_parser.SetMember](Type-mlc-minilang-parser-setmember-1055617036.md) — struct
- [mlc.minilang_parser.Str](Type-mlc-minilang-parser-str-1070175973.md) — struct
- [mlc.minilang_parser.StructDef](Type-mlc-minilang-parser-structdef-1454499606.md) — struct
- [mlc.minilang_parser.Switch](Type-mlc-minilang-parser-switch-1024024746.md) — struct
- [mlc.minilang_parser.SwitchCase](Type-mlc-minilang-parser-switchcase-1317797750.md) — struct
- [mlc.minilang_parser.SynchronizedBlock](Type-mlc-minilang-parser-synchronizedblock-142144157.md) — struct
- [mlc.minilang_parser.SynchronizedDecl](Type-mlc-minilang-parser-synchronizeddecl-462840584.md) — struct
<a id="constant-constant-mlc-minilang-parser-tk-comma-const-tk-comma-12-minilangcompilerml-mlc-minilang-parser-ml-881426345"></a>
### TK_COMMA

```ml
const TK_COMMA = 12
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:619`

<a id="constant-constant-mlc-minilang-parser-tk-dot-const-tk-dot-7-minilangcompilerml-mlc-minilang-parser-ml-542723635"></a>
### TK_DOT

```ml
const TK_DOT = 7
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:614`

<a id="constant-constant-mlc-minilang-parser-tk-eof-const-tk-eof-14-minilangcompilerml-mlc-minilang-parser-ml-1782670493"></a>
### TK_EOF

```ml
const TK_EOF = 14
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:621`

<a id="constant-constant-mlc-minilang-parser-tk-ident-const-tk-ident-5-minilangcompilerml-mlc-minilang-parser-ml-1497482247"></a>
### TK_IDENT

```ml
const TK_IDENT = 5
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:612`

<a id="constant-constant-mlc-minilang-parser-tk-kw-const-tk-kw-4-minilangcompilerml-mlc-minilang-parser-ml-269347820"></a>
### TK_KW

```ml
const TK_KW = 4
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:611`

<a id="constant-constant-mlc-minilang-parser-tk-lbrack-const-tk-lbrack-10-minilangcompilerml-mlc-minilang-parser-ml-1026599271"></a>
### TK_LBRACK

```ml
const TK_LBRACK = 10
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:617`

<a id="constant-constant-mlc-minilang-parser-tk-lparen-const-tk-lparen-8-minilangcompilerml-mlc-minilang-parser-ml-582310880"></a>
### TK_LPAREN

```ml
const TK_LPAREN = 8
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:615`

<a id="constant-constant-mlc-minilang-parser-tk-nl-const-tk-nl-1-minilangcompilerml-mlc-minilang-parser-ml-1314362877"></a>
### TK_NL

```ml
const TK_NL = 1
```

Compact discriminants stored in the token arena's byte kind column.


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:608`

<a id="constant-constant-mlc-minilang-parser-tk-number-const-tk-number-2-minilangcompilerml-mlc-minilang-parser-ml-395845886"></a>
### TK_NUMBER

```ml
const TK_NUMBER = 2
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:609`

<a id="constant-constant-mlc-minilang-parser-tk-op-const-tk-op-6-minilangcompilerml-mlc-minilang-parser-ml-1603704766"></a>
### TK_OP

```ml
const TK_OP = 6
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:613`

<a id="constant-constant-mlc-minilang-parser-tk-rbrack-const-tk-rbrack-11-minilangcompilerml-mlc-minilang-parser-ml-1249781114"></a>
### TK_RBRACK

```ml
const TK_RBRACK = 11
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:618`

<a id="constant-constant-mlc-minilang-parser-tk-rparen-const-tk-rparen-9-minilangcompilerml-mlc-minilang-parser-ml-665869093"></a>
### TK_RPAREN

```ml
const TK_RPAREN = 9
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:616`

<a id="constant-constant-mlc-minilang-parser-tk-semi-const-tk-semi-13-minilangcompilerml-mlc-minilang-parser-ml-134606712"></a>
### TK_SEMI

```ml
const TK_SEMI = 13
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:620`

<a id="constant-constant-mlc-minilang-parser-tk-string-const-tk-string-3-minilangcompilerml-mlc-minilang-parser-ml-801927583"></a>
### TK_STRING

```ml
const TK_STRING = 3
```


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:610`

- [mlc.minilang_parser.Token](Type-mlc-minilang-parser-token-1078023415.md) — struct
- [mlc.minilang_parser.TokenArena](Type-mlc-minilang-parser-tokenarena-1905929590.md) — struct
<a id="function-function-mlc-minilang-parser-tokenize-function-tokenize-code-minilangcompilerml-mlc-minilang-parser-ml-799517388"></a>
### tokenize

```ml
function tokenize(code)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `code` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/mlc/minilang_parser.ml:908`

- [mlc.minilang_parser.TypeGuard](Type-mlc-minilang-parser-typeguard-538254235.md) — struct
- [mlc.minilang_parser.Unary](Type-mlc-minilang-parser-unary-1983916477.md) — struct
- [mlc.minilang_parser.Var](Type-mlc-minilang-parser-var-95406095.md) — struct
- [mlc.minilang_parser.VoidLit](Type-mlc-minilang-parser-voidlit-556229069.md) — struct
- [mlc.minilang_parser.While](Type-mlc-minilang-parser-while-1382365767.md) — struct
- [mlc.minilang_parser.Yield](Type-mlc-minilang-parser-yield-794322735.md) — struct
