# `src/minidoc/metrics.ml`

[Home](README.md) · [Files](Files.md)

Calculates size, complexity, duplication, Halstead, maintainability, and coverage metrics.

Package: [`minidoc.metrics`](Package-minidoc-metrics-1878134155.md)

Reachable from entry: **yes**

## Imports

- `minidoc/model.ml` as `model` → [src/minidoc/model.ml](File-src-minidoc-model-ml-438170230.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `mlc/minilang_parser.ml` as `parser` → `../MiniLangCompilerML/mlc/minilang_parser.ml` — external dependency
- `mlc/tools.ml` as `tools` → `../MiniLangCompilerML/mlc/tools.ml` — external dependency
- `std/math.ml` as `math` → `../MiniLangCompilerML/std/math.ml` — external dependency
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency

## Declarations

<a id="function-function-minidoc-metrics-accumulatehalstead-function-accumulatehalstead-accumulator-source-src-minidoc-metrics-ml-2018900496"></a>
### _accumulateHalstead

```ml
function _accumulateHalstead(accumulator, source)
```

Performs the '_accumulateHalstead' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `accumulator` | `dynamic` | — |  |
| `source` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L111)

<a id="function-function-minidoc-metrics-appendfunctionandnested-function-appendfunctionandnested-project-file-normalized-lines-node-output-src-minidoc-metrics-ml-283899290"></a>
### _appendFunctionAndNested

```ml
function _appendFunctionAndNested(project, file, normalized_lines, node, output)
```

Performs the '_appendFunctionAndNested' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `normalized_lines` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `output` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L537)

<a id="function-function-minidoc-metrics-appendfunctionmetric-function-appendfunctionmetric-project-file-normalized-lines-node-output-src-minidoc-metrics-ml-854357784"></a>
### _appendFunctionMetric

```ml
function _appendFunctionMetric(project, file, normalized_lines, node, output)
```

Performs the '_appendFunctionMetric' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `normalized_lines` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `output` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L471)

<a id="function-function-minidoc-metrics-booleanoperators-function-booleanoperators-expr-src-minidoc-metrics-ml-643365584"></a>
### _booleanOperators

```ml
function _booleanOperators(expr)
```

Performs the '_booleanOperators' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `expr` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L280)

<a id="function-function-minidoc-metrics-calculateduplicates-function-calculateduplicates-sources-src-minidoc-metrics-ml-1078932023"></a>
### _calculateDuplicates

```ml
function _calculateDuplicates(sources)
```

Performs the '_calculateDuplicates' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `sources` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L598)

<a id="function-function-minidoc-metrics-collectfunctions-function-collectfunctions-project-file-normalized-lines-body-output-src-minidoc-metrics-ml-796792166"></a>
### _collectFunctions

```ml
function _collectFunctions(project, file, normalized_lines, body, output)
```

Performs the '_collectFunctions' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `normalized_lines` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `output` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L544)

<a id="function-function-minidoc-metrics-commentflags-function-commentflags-source-src-minidoc-metrics-ml-366355676"></a>
### _commentFlags

```ml
function _commentFlags(source)
```

Performs the '_commentFlags' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L190)

<a id="function-function-minidoc-metrics-complexity-function-complexity-body-src-minidoc-metrics-ml-1173839345"></a>
### _complexity

```ml
function _complexity(body)
```

Performs the '_complexity' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L378)

<a id="function-function-minidoc-metrics-coveragemetric-function-coveragemetric-documented-total-src-minidoc-metrics-ml-216051785"></a>
### _coverageMetric

```ml
function _coverageMetric(documented, total)
```

Creates one rounded documentation-coverage metric.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `documented` | `dynamic` | — |  |
| `total` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L708)

<a id="function-function-minidoc-metrics-duplicatedlinecount-function-duplicatedlinecount-source-data-src-minidoc-metrics-ml-1920902583"></a>
### _duplicatedLineCount

```ml
function _duplicatedLineCount(source_data)
```

Performs the '_duplicatedLineCount' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source_data` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L656)

<a id="function-function-minidoc-metrics-findfunctionsymbol-function-findfunctionsymbol-project-file-id-position-src-minidoc-metrics-ml-877065609"></a>
### _findFunctionSymbol

```ml
function _findFunctionSymbol(project, file_id, position)
```

Performs the '_findFunctionSymbol' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file_id` | `dynamic` | — |  |
| `position` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L385)

<a id="function-function-minidoc-metrics-finishhalstead-function-finishhalstead-accumulator-src-minidoc-metrics-ml-1252759367"></a>
### _finishHalstead

```ml
function _finishHalstead(accumulator)
```

Performs the '_finishHalstead' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `accumulator` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L134)

<a id="function-function-minidoc-metrics-functionendline-function-functionendline-normalized-lines-start-line-src-minidoc-metrics-ml-1697392997"></a>
### _functionEndLine

```ml
function _functionEndLine(normalized_lines, start_line)
```

Performs the '_functionEndLine' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `normalized_lines` | `dynamic` | — |  |
| `start_line` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L405)

<a id="function-function-minidoc-metrics-functiontotals-function-functiontotals-function-metrics-file-id-src-minidoc-metrics-ml-667394573"></a>
### _functionTotals

```ml
function _functionTotals(function_metrics, file_id)
```

Performs the '_functionTotals' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `function_metrics` | `dynamic` | — |  |
| `file_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L668)

<a id="function-function-minidoc-metrics-halstead-function-halstead-source-src-minidoc-metrics-ml-1602355904"></a>
### _halstead

```ml
function _halstead(source)
```

Performs the '_halstead' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L161)

<a id="function-function-minidoc-metrics-isdocumentable-function-isdocumentable-doc-symbol-src-minidoc-metrics-ml-143533948"></a>
### _isDocumentable

```ml
function _isDocumentable(doc_symbol)
```

Performs the '_isDocumentable' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L692)

<a id="function-function-minidoc-metrics-isdocumentablecallable-function-isdocumentablecallable-doc-symbol-src-minidoc-metrics-ml-755917228"></a>
### _isDocumentableCallable

```ml
function _isDocumentableCallable(doc_symbol)
```

Returns whether a symbol contributes parameter contracts to public API coverage.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L700)

<a id="function-function-minidoc-metrics-ismeasuredfile-function-ismeasuredfile-project-file-src-minidoc-metrics-ml-1753902428"></a>
### _isMeasuredFile

```ml
function _isMeasuredFile(project, file)
```

Performs the '_isMeasuredFile' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L716)

<a id="function-function-minidoc-metrics-maintainability-function-maintainability-volume-cyclomatic-source-lines-src-minidoc-metrics-ml-27050618"></a>
### _maintainability

```ml
function _maintainability(volume, cyclomatic, source_lines)
```

Performs the '_maintainability' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `volume` | `dynamic` | — |  |
| `cyclomatic` | `dynamic` | — |  |
| `source_lines` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L459)

<a id="function-function-minidoc-metrics-markwindow-function-markwindow-source-data-start-count-src-minidoc-metrics-ml-1506590456"></a>
### _markWindow

```ml
function _markWindow(source_data, start, count)
```

Performs the '_markWindow' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source_data` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L574)

<a id="function-function-minidoc-metrics-newhalsteadaccumulator-function-newhalsteadaccumulator-src-minidoc-metrics-ml-495882533"></a>
### _newHalsteadAccumulator

```ml
function _newHalsteadAccumulator()
```

Performs the '_newHalsteadAccumulator' step in MiniDoc's metrics pipeline.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L83)

<a id="function-function-minidoc-metrics-normalizedlines-function-normalizedlines-source-src-minidoc-metrics-ml-623941354"></a>
### _normalizedLines

```ml
function _normalizedLines(source)
```

Performs the '_normalizedLines' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L167)

<a id="function-function-minidoc-metrics-recordoperand-function-recordoperand-accumulator-value-src-minidoc-metrics-ml-2035509488"></a>
### _recordOperand

```ml
function _recordOperand(accumulator, value)
```

Performs the '_recordOperand' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `accumulator` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L100)

<a id="function-function-minidoc-metrics-recordoperator-function-recordoperator-accumulator-value-src-minidoc-metrics-ml-1977189644"></a>
### _recordOperator

```ml
function _recordOperator(accumulator, value)
```

Performs the '_recordOperator' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `accumulator` | `dynamic` | — |  |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L89)

<a id="function-function-minidoc-metrics-round2-function-round2-value-src-minidoc-metrics-ml-954408678"></a>
### _round2

```ml
function _round2(value)
```

Performs the '_round2' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L68)

<a id="function-function-minidoc-metrics-sourcedata-function-sourcedata-file-src-minidoc-metrics-ml-963878849"></a>
### _sourceData

```ml
function _sourceData(file)
```

Performs the '_sourceData' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L248)

<a id="function-function-minidoc-metrics-sourcedatabyid-function-sourcedatabyid-sources-file-id-src-minidoc-metrics-ml-1425402771"></a>
### _sourceDataById

```ml
function _sourceDataById(sources, file_id)
```

Performs the '_sourceDataById' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `sources` | `dynamic` | — |  |
| `file_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L564)

<a id="function-function-minidoc-metrics-sourcelines-function-sourcelines-source-src-minidoc-metrics-ml-1184977954"></a>
### _sourceLines

```ml
function _sourceLines(source)
```

Performs the '_sourceLines' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L423)

<a id="function-function-minidoc-metrics-sourceslice-function-sourceslice-source-start-line-end-line-src-minidoc-metrics-ml-2074663469"></a>
### _sourceSlice

```ml
function _sourceSlice(source, start_line, end_line)
```

Performs the '_sourceSlice' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `start_line` | `dynamic` | — |  |
| `end_line` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L440)

<a id="function-function-minidoc-metrics-startsfunction-function-startsfunction-line-src-minidoc-metrics-ml-1539691709"></a>
### _startsFunction

```ml
function _startsFunction(line)
```

Performs the '_startsFunction' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `line` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L397)

<a id="function-function-minidoc-metrics-tokenvalue-function-tokenvalue-tokens-index-src-minidoc-metrics-ml-437919237"></a>
### _tokenValue

```ml
function _tokenValue(tokens, index)
```

Performs the '_tokenValue' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `tokens` | `dynamic` | — |  |
| `index` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L74)

<a id="function-function-minidoc-metrics-touchnesting-function-touchnesting-accumulator-nesting-src-minidoc-metrics-ml-1877717551"></a>
### _touchNesting

```ml
function _touchNesting(accumulator, nesting)
```

Performs the '_touchNesting' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `accumulator` | `dynamic` | — |  |
| `nesting` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L317)

<a id="function-function-minidoc-metrics-walkcomplexity-function-walkcomplexity-body-accumulator-nesting-src-minidoc-metrics-ml-286232695"></a>
### _walkComplexity

```ml
function _walkComplexity(body, accumulator, nesting)
```

Performs the '_walkComplexity' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `body` | `dynamic` | — |  |
| `accumulator` | `dynamic` | — |  |
| `nesting` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L324)

<a id="function-function-minidoc-metrics-walknestedfunctions-function-walknestedfunctions-project-file-normalized-lines-body-output-src-minidoc-metrics-ml-853314118"></a>
### _walkNestedFunctions

```ml
function _walkNestedFunctions(project, file, normalized_lines, body, output)
```

Performs the '_walkNestedFunctions' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `normalized_lines` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `output` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L505)

<a id="function-function-minidoc-metrics-windowfingerprint-function-windowfingerprint-lines-start-count-src-minidoc-metrics-ml-470461909"></a>
### _windowFingerprint

```ml
function _windowFingerprint(lines, start, count)
```

Performs the '_windowFingerprint' step in MiniDoc's metrics pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `lines` | `dynamic` | — |  |
| `start` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L584)

<a id="function-function-minidoc-metrics-calculate-function-calculate-project-src-minidoc-metrics-ml-1071316968"></a>
### calculate

```ml
function calculate(project)
```

Calculates project, file, and function metrics for an analyzed project.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Analyzed project whose metrics should be calculated. |


**Since:** `0.2.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L723)

<a id="constant-constant-minidoc-metrics-clone-detail-limit-const-clone-detail-limit-200-src-minidoc-metrics-ml-1708870366"></a>
### CLONE_DETAIL_LIMIT

```ml
const CLONE_DETAIL_LIMIT = 200
```

Maximum number of representative clone groups rendered in detail.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L28)

- [minidoc.metrics.ComplexityAccumulator](Type-minidoc-metrics-complexityaccumulator-2005672451.md) — struct
<a id="constant-constant-minidoc-metrics-duplicate-window-size-const-duplicate-window-size-6-src-minidoc-metrics-ml-1330598122"></a>
### DUPLICATE_WINDOW_SIZE

```ml
const DUPLICATE_WINDOW_SIZE = 6
```

Number of normalized source lines in one duplicate-code window.


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/metrics.ml#L24)

- [minidoc.metrics.HalsteadAccumulator](Type-minidoc-metrics-halsteadaccumulator-1907709643.md) — struct
- [minidoc.metrics.SourceMetricsData](Type-minidoc-metrics-sourcemetricsdata-1214918367.md) — struct
