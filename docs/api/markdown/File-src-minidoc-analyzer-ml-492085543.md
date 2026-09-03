# `src/minidoc/analyzer.ml`

[Home](README.md) · [Files](Files.md)

Builds symbols, signatures, documentation diagnostics, and static relations.

Package: [`minidoc.analyzer`](Package-minidoc-analyzer-562301892.md)

Reachable from entry: **yes**

## Imports

- `minidoc/doc_comments.ml` as `comments` → [src/minidoc/doc_comments.ml](File-src-minidoc-doc-comments-ml-1995285450.md)
- `minidoc/model.ml` as `model` → [src/minidoc/model.ml](File-src-minidoc-model-ml-438170230.md)
- `minidoc/util.ml` as `util` → [src/minidoc/util.ml](File-src-minidoc-util-ml-1632979029.md)
- `mlc/tools.ml` as `tools` → `../MiniLangCompilerML/mlc/tools.ml` — external dependency
- `std/string.ml` as `strings` → `../MiniLangCompilerML/std/string.ml` — external dependency

## Declarations

<a id="function-function-minidoc-analyzer-addenum-function-addenum-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-1898800049"></a>
### _addEnum

```ml
function _addEnum(project, file, node, prefix, namespace_name)
```

Performs the '_addEnum' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L648)

<a id="function-function-minidoc-analyzer-addexternfunction-function-addexternfunction-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-1344035985"></a>
### _addExternFunction

```ml
function _addExternFunction(project, file, node, prefix, namespace_name)
```

Performs the '_addExternFunction' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L553)

<a id="function-function-minidoc-analyzer-addfunction-function-addfunction-project-file-node-kind-prefix-namespace-name-container-id-src-minidoc-analyzer-ml-1636501440"></a>
### _addFunction

```ml
function _addFunction(project, file, node, kind, prefix, namespace_name, container_id)
```

Performs the '_addFunction' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |
| `container_id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L500)

<a id="function-function-minidoc-analyzer-addinterface-function-addinterface-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-466710023"></a>
### _addInterface

```ml
function _addInterface(project, file, node, prefix, namespace_name)
```

Performs the '_addInterface' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L627)

<a id="function-function-minidoc-analyzer-addstruct-function-addstruct-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-2123710885"></a>
### _addStruct

```ml
function _addStruct(project, file, node, prefix, namespace_name)
```

Performs the '_addStruct' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `prefix` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L578)

<a id="function-function-minidoc-analyzer-addsymbol-function-addsymbol-project-file-kind-name-qualified-name-container-id-namespace-name-position-signature-type-name-modifiers-parameters-return-type-doc-src-minidoc-analyzer-ml-624033249"></a>
### _addSymbol

```ml
function _addSymbol(project, file, kind, name, qualified_name, container_id, namespace_name, position, signature, type_name, modifiers, parameters, return_type, doc)
```

Performs the '_addSymbol' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |
| `qualified_name` | `dynamic` | — |  |
| `container_id` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |
| `position` | `dynamic` | — |  |
| `signature` | `dynamic` | — |  |
| `type_name` | `dynamic` | — |  |
| `modifiers` | `dynamic` | — |  |
| `parameters` | `dynamic` | — |  |
| `return_type` | `dynamic` | — |  |
| `doc` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L175)

<a id="function-function-minidoc-analyzer-aliastargetpackage-function-aliastargetpackage-project-file-id-alias-src-minidoc-analyzer-ml-1437372212"></a>
### _aliasTargetPackage

```ml
function _aliasTargetPackage(project, file_id, alias)
```

Performs the '_aliasTargetPackage' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file_id` | `dynamic` | — |  |
| `alias` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L745)

<a id="function-function-minidoc-analyzer-calleename-function-calleename-expr-src-minidoc-analyzer-ml-1597510084"></a>
### _calleeName

```ml
function _calleeName(expr)
```

Performs the '_calleeName' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `expr` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L386)

<a id="function-function-minidoc-analyzer-diagnostic-function-diagnostic-project-severity-code-file-position-message-src-minidoc-analyzer-ml-1923704018"></a>
### _diagnostic

```ml
function _diagnostic(project, severity, code, file, position, message)
```

Performs the '_diagnostic' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `severity` | `dynamic` | — |  |
| `code` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `position` | `dynamic` | — |  |
| `message` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L141)

<a id="function-function-minidoc-analyzer-filebyid-function-filebyid-project-id-src-minidoc-analyzer-ml-1558966907"></a>
### _fileById

```ml
function _fileById(project, id)
```

Performs the '_fileById' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L148)

<a id="function-function-minidoc-analyzer-findword-function-findword-source-name-start-pos-docs-src-minidoc-analyzer-ml-633312485"></a>
### _findWord

```ml
function _findWord(source, name, start_pos, docs)
```

Finds a declaration word while ignoring identical words inside its comments.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |
| `start_pos` | `dynamic` | — |  |
| `docs` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L116)

<a id="function-function-minidoc-analyzer-functionparameters-function-functionparameters-node-doc-src-minidoc-analyzer-ml-706939433"></a>
### _functionParameters

```ml
function _functionParameters(node, doc)
```

Performs the '_functionParameters' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |
| `doc` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L333)

<a id="function-function-minidoc-analyzer-functionsignature-function-functionsignature-node-parameters-name-kind-src-minidoc-analyzer-ml-620797374"></a>
### _functionSignature

```ml
function _functionSignature(node, parameters, name, kind)
```

Performs the '_functionSignature' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `node` | `dynamic` | — |  |
| `parameters` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L356)

<a id="function-function-minidoc-analyzer-insidedocumentation-function-insidedocumentation-docs-position-src-minidoc-analyzer-ml-1609564489"></a>
### _insideDocumentation

```ml
function _insideDocumentation(docs, position)
```

Reports whether a source position belongs to a scanned documentation block.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `docs` | `dynamic` | — |  |
| `position` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L106)

<a id="function-function-minidoc-analyzer-ispositivedecimal-function-ispositivedecimal-value-src-minidoc-analyzer-ml-1471197426"></a>
### _isPositiveDecimal

```ml
function _isPositiveDecimal(value)
```

Return whether a string contains a positive decimal integer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L239)

<a id="function-function-minidoc-analyzer-istestroletag-function-istestroletag-name-src-minidoc-analyzer-ml-356267668"></a>
### _isTestRoleTag

```ml
function _isTestRoleTag(name)
```

Return whether a tag participates in std.test discovery.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L233)

<a id="function-function-minidoc-analyzer-qualified-function-qualified-prefix-name-src-minidoc-analyzer-ml-1309113056"></a>
### _qualified

```ml
function _qualified(prefix, name)
```

Performs the '_qualified' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `prefix` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L23)

<a id="function-function-minidoc-analyzer-resolvecalls-function-resolvecalls-project-src-minidoc-analyzer-ml-2135136698"></a>
### _resolveCalls

```ml
function _resolveCalls(project)
```

Performs the '_resolveCalls' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L761)

<a id="function-function-minidoc-analyzer-resolvetyperelations-function-resolvetyperelations-project-src-minidoc-analyzer-ml-1763154930"></a>
### _resolveTypeRelations

```ml
function _resolveTypeRelations(project)
```

Performs the '_resolveTypeRelations' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L797)

<a id="function-function-minidoc-analyzer-resolveunique-function-resolveunique-project-candidates-allowed-kinds-src-minidoc-analyzer-ml-1675174222"></a>
### _resolveUnique

```ml
function _resolveUnique(project, candidates, allowed_kinds)
```

Performs the '_resolveUnique' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `candidates` | `dynamic` | — |  |
| `allowed_kinds` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L724)

<a id="function-function-minidoc-analyzer-scope-function-scope-package-name-namespace-name-src-minidoc-analyzer-ml-1593120142"></a>
### _scope

```ml
function _scope(package_name, namespace_name)
```

Performs the '_scope' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `package_name` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L31)

<a id="function-function-minidoc-analyzer-summaryqualityeligible-function-summaryqualityeligible-project-doc-symbol-src-minidoc-analyzer-ml-1404154389"></a>
### _summaryQualityEligible

```ml
function _summaryQualityEligible(project, doc_symbol)
```

Returns whether a declaration belongs to the configured summary-quality scope.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `doc_symbol` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L860)

<a id="function-function-minidoc-analyzer-symbolbyid-function-symbolbyid-project-id-src-minidoc-analyzer-ml-201427511"></a>
### _symbolById

```ml
function _symbolById(project, id)
```

Performs the '_symbolById' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `id` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L158)

<a id="function-function-minidoc-analyzer-symbolid-function-symbolid-kind-qualified-name-signature-file-path-src-minidoc-analyzer-ml-736578529"></a>
### _symbolId

```ml
function _symbolId(kind, qualified_name, signature, file_path)
```

Performs the '_symbolId' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `kind` | `dynamic` | — |  |
| `qualified_name` | `dynamic` | — |  |
| `signature` | `dynamic` | — |  |
| `file_path` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L168)

<a id="function-function-minidoc-analyzer-typename-function-typename-value-optional-src-minidoc-analyzer-ml-231327762"></a>
### _typeName

```ml
function _typeName(value, optional)
```

Performs the '_typeName' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `value` | `dynamic` | — |  |
| `optional` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L37)

<a id="function-function-minidoc-analyzer-validatecoverage-function-validatecoverage-project-src-minidoc-analyzer-ml-1362902924"></a>
### _validateCoverage

```ml
function _validateCoverage(project)
```

Performs the '_validateCoverage' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L814)

<a id="function-function-minidoc-analyzer-validatefunctiondoc-function-validatefunctiondoc-project-file-node-doc-parameters-return-type-internal-kind-src-minidoc-analyzer-ml-850600874"></a>
### _validateFunctionDoc

```ml
function _validateFunctionDoc(project, file, node, doc, parameters, return_type, internal, kind)
```

Performs the '_validateFunctionDoc' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `doc` | `dynamic` | — |  |
| `parameters` | `dynamic` | — |  |
| `return_type` | `dynamic` | — |  |
| `internal` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L289)

<a id="function-function-minidoc-analyzer-validatesummaryquality-function-validatesummaryquality-project-src-minidoc-analyzer-ml-1396789550"></a>
### _validateSummaryQuality

```ml
function _validateSummaryQuality(project)
```

Reports generic and excessively reused documentation summaries.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L870)

<a id="function-function-minidoc-analyzer-validatetestfixtureuniqueness-function-validatetestfixtureuniqueness-project-src-minidoc-analyzer-ml-640306438"></a>
### _validateTestFixtureUniqueness

```ml
function _validateTestFixtureUniqueness(project)
```

Report duplicate lifecycle hooks within one source-file suite.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L829)

<a id="function-function-minidoc-analyzer-validatetesttags-function-validatetesttags-project-file-node-doc-parameters-return-type-kind-src-minidoc-analyzer-ml-866121661"></a>
### _validateTestTags

```ml
function _validateTestTags(project, file, node, doc, parameters, return_type, kind)
```

Validate std.test discovery tags attached to one callable declaration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `node` | `dynamic` | — |  |
| `doc` | `dynamic` | — |  |
| `parameters` | `dynamic` | — |  |
| `return_type` | `dynamic` | — |  |
| `kind` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L252)

<a id="function-function-minidoc-analyzer-walkdeclarations-function-walkdeclarations-project-file-body-namespace-name-src-minidoc-analyzer-ml-1227878639"></a>
### _walkDeclarations

```ml
function _walkDeclarations(project, file, body, namespace_name)
```

Performs the '_walkDeclarations' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L675)

<a id="function-function-minidoc-analyzer-walkexpression-function-walkexpression-project-file-caller-expr-namespace-name-src-minidoc-analyzer-ml-2008412265"></a>
### _walkExpression

```ml
function _walkExpression(project, file, caller, expr, namespace_name)
```

Performs the '_walkExpression' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `caller` | `dynamic` | — |  |
| `expr` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L399)

<a id="function-function-minidoc-analyzer-walknested-function-walknested-project-file-body-parent-namespace-name-src-minidoc-analyzer-ml-888770987"></a>
### _walkNested

```ml
function _walkNested(project, file, body, parent, namespace_name)
```

Performs the '_walkNested' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `parent` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L523)

<a id="function-function-minidoc-analyzer-walkstatementsforcalls-function-walkstatementsforcalls-project-file-caller-body-namespace-name-src-minidoc-analyzer-ml-1230640592"></a>
### _walkStatementsForCalls

```ml
function _walkStatementsForCalls(project, file, caller, body, namespace_name)
```

Performs the '_walkStatementsForCalls' step in MiniDoc's symbol-analysis pipeline.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — |  |
| `file` | `dynamic` | — |  |
| `caller` | `dynamic` | — |  |
| `body` | `dynamic` | — |  |
| `namespace_name` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L437)

<a id="function-function-minidoc-analyzer-warningscopeincludes-function-warningscopeincludes-scope-internal-src-minidoc-analyzer-ml-130785450"></a>
### _warningScopeIncludes

```ml
function _warningScopeIncludes(scope, internal)
```

Returns whether a configured validation scope includes a declaration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `scope` | `dynamic` | — |  |
| `internal` | `dynamic` | — |  |


[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L225)

<a id="function-function-minidoc-analyzer-analyze-function-analyze-project-src-minidoc-analyzer-ml-448369014"></a>
### analyze

```ml
function analyze(project)
```

Enriches a loaded project with declarations, calls, type relations, and documentation diagnostics.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `project` | `dynamic` | — | Project model populated by the source loader. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L900)

<a id="function-function-minidoc-analyzer-expressiontext-function-expressiontext-expr-src-minidoc-analyzer-ml-2077794936"></a>
### expressionText

```ml
function expressionText(expr)
```

Converts a MiniLang expression node into a compact source-like representation.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `expr` | `dynamic` | — | Expression AST node to format. |


**Since:** `0.1.0`

[View source](https://github.com/MiniLangProject/MiniDoc/blob/main/src/minidoc/analyzer.ml#L47)
