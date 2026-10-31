# Metrics

[Home](README.md)

Static metrics are calculated from target-specific preprocessed MiniLang files inside the configured source roots. External imported modules, generated documentation, and excluded paths are not measured.

## Project summary

| Metric | Value |
| --- | ---: |
| Blank lines | 401 |
| Clone groups | 89 |
| Cognitive complexity | 2971 (maximum per function: 108) |
| Comment lines | 819 |
| Cyclomatic complexity | 2039 (average: 7.33, maximum: 54) |
| Documentation coverage | 100% (69 of 69 documentation items) |
| Duplicated lines | 476 (9%) |
| Files | 13 |
| Functions | 278 |
| Maintainability index | 2.94 / 100 |
| Physical lines | 6506 |
| Source lines | 5286 |
| Statements | 4287 |

## Documentation coverage

Coverage is split by documentation contract so strong API summaries cannot hide undocumented parameters or data members.

| Category | Documented | Total | Coverage |
| --- | ---: | ---: | ---: |
| API declarations | 30 | 30 | 100% |
| Constants | 0 | 0 | 100% |
| Enum variants | 0 | 0 | 100% |
| Fields | 0 | 0 | 100% |
| Globals | 0 | 0 | 100% |
| Overall | 69 | 69 | 100% |
| Parameters | 39 | 39 | 100% |

## Halstead metrics

| Distinct operators | Distinct operands | Total operators | Total operands | Vocabulary | Length | Volume | Difficulty | Effort | Estimated defects |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 40 | 2085 | 26744 | 19941 | 2125 | 46685 | 516020.84 | 191.28 | 98704763.66 | 172.01 |

## Files

| File | SLOC | Functions | Cyclomatic total / avg / max | Cognitive total / max | Duplication | Halstead volume | MI |
| --- | ---: | ---: | --- | --- | --- | ---: | ---: |
| [`src/main.ml`](File-src-main-ml-186468670.md) | 4 | 1 | 1 / 1 / 1 | 0 / 0 | 0 (0%) | 74.01 | 73.64 |
| [`src/minidoc/analyzer.ml`](File-src-minidoc-analyzer-ml-492085543.md) | 842 | 41 | 382 / 9.32 / 30 | 576 / 59 | 14 (1.66%) | 78925.63 | 0 |
| [`src/minidoc/app.ml`](File-src-minidoc-app-ml-1489174864.md) | 160 | 10 | 53 / 5.3 / 13 | 49 / 12 | 0 (0%) | 7953.14 | 17.48 |
| [`src/minidoc/config.ml`](File-src-minidoc-config-ml-2001755147.md) | 374 | 18 | 216 / 12 / 54 | 357 / 108 | 0 (0%) | 30321.89 | 0 |
| [`src/minidoc/doc_comments.ml`](File-src-minidoc-doc-comments-ml-1995285450.md) | 262 | 11 | 88 / 8 / 22 | 118 / 39 | 0 (0%) | 14954.39 | 6.18 |
| [`src/minidoc/graph.ml`](File-src-minidoc-graph-ml-29661697.md) | 259 | 11 | 88 / 8 / 33 | 140 / 66 | 20 (7.72%) | 15986.11 | 6.09 |
| [`src/minidoc/loader.ml`](File-src-minidoc-loader-ml-952553188.md) | 257 | 14 | 104 / 7.43 / 19 | 151 / 32 | 0 (0%) | 18893.45 | 3.5 |
| [`src/minidoc/metrics.ml`](File-src-minidoc-metrics-ml-1301618694.md) | 821 | 38 | 287 / 7.55 / 35 | 429 / 86 | 7 (0.85%) | 53951.12 | 0 |
| [`src/minidoc/model.ml`](File-src-minidoc-model-ml-438170230.md) | 300 | 6 | 6 / 1 / 1 | 0 / 0 | 23 (7.67%) | 6318.46 | 18.55 |
| [`src/minidoc/ordering.ml`](File-src-minidoc-ordering-ml-677118389.md) | 159 | 12 | 50 / 4.17 / 12 | 61 / 27 | 12 (7.55%) | 8708.94 | 17.67 |
| [`src/minidoc/render_html.ml`](File-src-minidoc-render-html-ml-1870373141.md) | 705 | 40 | 286 / 7.15 / 43 | 440 / 80 | 188 (26.67%) | 73160.02 | 0 |
| [`src/minidoc/render_markdown.ml`](File-src-minidoc-render-markdown-ml-212465045.md) | 719 | 38 | 275 / 7.24 / 38 | 421 / 71 | 204 (28.37%) | 66273.62 | 0 |
| [`src/minidoc/util.ml`](File-src-minidoc-util-ml-1632979029.md) | 424 | 38 | 203 / 5.34 / 24 | 229 / 42 | 8 (1.89%) | 27358.34 | 0 |

## Functions

| Function | Location | LOC | Statements | Cyclomatic | Cognitive | Max nesting | Halstead volume | MI |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| [`main`](File-src-main-ml-186468670.md#function-function-main-function-main-args-src-main-ml-776500952) | `src/main.ml:18` | 3 | 1 | 1 | 0 | 0 | 46.51 | 77.78 |
| [`minidoc.analyzer._addEnum`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addenum-function-addenum-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-1898800049) | `src/minidoc/analyzer.ml:721` | 24 | 21 | 5 | 7 | 3 | 1786.26 | 46.45 |
| [`minidoc.analyzer._addExternFunction`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addexternfunction-function-addexternfunction-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-1344035985) | `src/minidoc/analyzer.ml:626` | 22 | 21 | 7 | 9 | 3 | 1805.65 | 46.97 |
| [`minidoc.analyzer._addFunction`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addfunction-function-addfunction-project-file-node-kind-prefix-namespace-name-container-id-src-minidoc-analyzer-ml-1636501440) | `src/minidoc/analyzer.ml:562` | 29 | 30 | 9 | 8 | 1 | 1881.69 | 43.96 |
| [`minidoc.analyzer._addInterface`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addinterface-function-addinterface-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-466710023) | `src/minidoc/analyzer.ml:700` | 18 | 14 | 5 | 10 | 4 | 1327.35 | 50.08 |
| [`minidoc.analyzer._addStruct`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addstruct-function-addstruct-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-2123710885) | `src/minidoc/analyzer.ml:651` | 44 | 43 | 20 | 34 | 4 | 3670.57 | 36.5 |
| [`minidoc.analyzer._addSymbol`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addsymbol-function-addsymbol-project-file-kind-name-qualified-name-container-id-namespace-name-position-signature-type-name-modifiers-parameters-return-type-doc-src-minidoc-analyzer-ml-624033249) | `src/minidoc/analyzer.ml:175` | 47 | 18 | 7 | 10 | 3 | 1812.59 | 39.77 |
| [`minidoc.analyzer._aliasTargetPackage`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-aliastargetpackage-function-aliastargetpackage-project-file-id-alias-src-minidoc-analyzer-ml-1437372212) | `src/minidoc/analyzer.ml:818` | 13 | 12 | 7 | 9 | 3 | 563.52 | 55.5 |
| [`minidoc.analyzer._calleeName`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-calleename-function-calleename-expr-src-minidoc-analyzer-ml-1597510084) | `src/minidoc/analyzer.ml:448` | 10 | 9 | 5 | 5 | 2 | 324.33 | 59.93 |
| [`minidoc.analyzer._diagnostic`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-diagnostic-function-diagnostic-project-severity-code-file-position-message-src-minidoc-analyzer-ml-1923704018) | `src/minidoc/analyzer.ml:141` | 4 | 2 | 1 | 0 | 0 | 317.29 | 69.22 |
| [`minidoc.analyzer._fileById`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-filebyid-function-filebyid-project-id-src-minidoc-analyzer-ml-1558966907) | `src/minidoc/analyzer.ml:148` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.analyzer._findWord`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-findword-function-findword-source-name-start-pos-docs-src-minidoc-analyzer-ml-633312485) | `src/minidoc/analyzer.ml:116` | 22 | 20 | 10 | 13 | 2 | 1294.51 | 47.58 |
| [`minidoc.analyzer._functionParameters`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-functionparameters-function-functionparameters-node-doc-src-minidoc-analyzer-ml-706939433) | `src/minidoc/analyzer.ml:333` | 20 | 21 | 13 | 18 | 3 | 1404.19 | 47.83 |
| [`minidoc.analyzer._functionSignature`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-functionsignature-function-functionsignature-node-parameters-name-kind-src-minidoc-analyzer-ml-620797374) | `src/minidoc/analyzer.ml:372` | 17 | 19 | 9 | 8 | 1 | 826.57 | 51.52 |
| [`minidoc.analyzer._insideDocumentation`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-insidedocumentation-function-insidedocumentation-docs-position-src-minidoc-analyzer-ml-1609564489) | `src/minidoc/analyzer.ml:106` | 7 | 6 | 6 | 6 | 2 | 335.77 | 63.07 |
| [`minidoc.analyzer._isPositiveDecimal`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-ispositivedecimal-function-ispositivedecimal-value-src-minidoc-analyzer-ml-1471197426) | `src/minidoc/analyzer.ml:239` | 10 | 9 | 6 | 6 | 2 | 413.59 | 59.06 |
| [`minidoc.analyzer._isTestRoleTag`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-istestroletag-function-istestroletag-name-src-minidoc-analyzer-ml-356267668) | `src/minidoc/analyzer.ml:233` | 3 | 1 | 1 | 0 | 0 | 102.8 | 75.37 |
| [`minidoc.analyzer._operatorQualifiedName`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-operatorqualifiedname-function-operatorqualifiedname-prefix-operator-symbol-parameters-src-minidoc-analyzer-ml-236381626) | `src/minidoc/analyzer.ml:434` | 11 | 8 | 4 | 6 | 3 | 442.8 | 58.22 |
| [`minidoc.analyzer._operatorSignature`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-operatorsignature-function-operatorsignature-node-parameters-operator-symbol-src-minidoc-analyzer-ml-673644030) | `src/minidoc/analyzer.ml:423` | 8 | 8 | 3 | 2 | 1 | 375 | 61.87 |
| [`minidoc.analyzer._operatorSourceSymbol`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-operatorsourcesymbol-function-operatorsourcesymbol-name-src-minidoc-analyzer-ml-502499404) | `src/minidoc/analyzer.ml:392` | 28 | 5 | 3 | 3 | 2 | 1022.11 | 46.96 |
| [`minidoc.analyzer._parameterSignaturePieces`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-parametersignaturepieces-function-parametersignaturepieces-parameters-src-minidoc-analyzer-ml-990591243) | `src/minidoc/analyzer.ml:356` | 13 | 14 | 6 | 8 | 2 | 529.1 | 55.82 |
| [`minidoc.analyzer._qualified`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-qualified-function-qualified-prefix-name-src-minidoc-analyzer-ml-1309113056) | `src/minidoc/analyzer.ml:23` | 5 | 5 | 3 | 2 | 1 | 128.93 | 69.57 |
| [`minidoc.analyzer._resolveCalls`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-resolvecalls-function-resolvecalls-project-src-minidoc-analyzer-ml-2135136698) | `src/minidoc/analyzer.ml:834` | 33 | 32 | 15 | 25 | 3 | 2523.26 | 41.04 |
| [`minidoc.analyzer._resolveTypeRelations`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-resolvetyperelations-function-resolvetyperelations-project-src-minidoc-analyzer-ml-1763154930) | `src/minidoc/analyzer.ml:870` | 14 | 16 | 10 | 13 | 2 | 1032.38 | 52.55 |
| [`minidoc.analyzer._resolveUnique`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-resolveunique-function-resolveunique-project-candidates-allowed-kinds-src-minidoc-analyzer-ml-1675174222) | `src/minidoc/analyzer.ml:797` | 18 | 16 | 8 | 12 | 3 | 675.88 | 51.73 |
| [`minidoc.analyzer._scope`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-scope-function-scope-package-name-namespace-name-src-minidoc-analyzer-ml-1593120142) | `src/minidoc/analyzer.ml:31` | 3 | 1 | 1 | 0 | 0 | 53.15 | 77.38 |
| [`minidoc.analyzer._summaryQualityEligible`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-summaryqualityeligible-function-summaryqualityeligible-project-doc-symbol-src-minidoc-analyzer-ml-1404154389) | `src/minidoc/analyzer.ml:933` | 7 | 8 | 4 | 3 | 1 | 447.7 | 62.46 |
| [`minidoc.analyzer._symbolById`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-symbolbyid-function-symbolbyid-project-id-src-minidoc-analyzer-ml-201427511) | `src/minidoc/analyzer.ml:158` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.analyzer._symbolId`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-symbolid-function-symbolid-kind-qualified-name-signature-file-path-src-minidoc-analyzer-ml-736578529) | `src/minidoc/analyzer.ml:168` | 4 | 2 | 1 | 0 | 0 | 165.67 | 71.19 |
| [`minidoc.analyzer._typeName`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-typename-function-typename-value-optional-src-minidoc-analyzer-ml-231327762) | `src/minidoc/analyzer.ml:37` | 6 | 6 | 4 | 3 | 1 | 180.09 | 66.69 |
| [`minidoc.analyzer._validateCoverage`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatecoverage-function-validatecoverage-project-src-minidoc-analyzer-ml-1362902924) | `src/minidoc/analyzer.ml:887` | 12 | 10 | 8 | 10 | 3 | 928.85 | 54.6 |
| [`minidoc.analyzer._validateFunctionDoc`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatefunctiondoc-function-validatefunctiondoc-project-file-node-doc-parameters-return-type-internal-kind-src-minidoc-analyzer-ml-850600874) | `src/minidoc/analyzer.ml:289` | 40 | 34 | 21 | 49 | 6 | 2579.35 | 38.34 |
| [`minidoc.analyzer._validateSummaryQuality`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatesummaryquality-function-validatesummaryquality-project-src-minidoc-analyzer-ml-1396789550) | `src/minidoc/analyzer.ml:943` | 26 | 25 | 10 | 13 | 2 | 1765.23 | 45.05 |
| [`minidoc.analyzer._validateTestFixtureUniqueness`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatetestfixtureuniqueness-function-validatetestfixtureuniqueness-project-src-minidoc-analyzer-ml-640306438) | `src/minidoc/analyzer.ml:902` | 28 | 28 | 15 | 42 | 6 | 1447.13 | 44.28 |
| [`minidoc.analyzer._validateTestTags`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatetesttags-function-validatetesttags-project-file-node-doc-parameters-return-type-kind-src-minidoc-analyzer-ml-866121661) | `src/minidoc/analyzer.ml:252` | 33 | 29 | 29 | 38 | 3 | 2563.32 | 39.11 |
| [`minidoc.analyzer._walkDeclarations`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walkdeclarations-function-walkdeclarations-project-file-body-namespace-name-src-minidoc-analyzer-ml-1227878639) | `src/minidoc/analyzer.ml:748` | 46 | 38 | 19 | 37 | 4 | 3338.5 | 36.5 |
| [`minidoc.analyzer._walkExpression`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walkexpression-function-walkexpression-project-file-caller-expr-namespace-name-src-minidoc-analyzer-ml-2008412265) | `src/minidoc/analyzer.ml:461` | 35 | 25 | 19 | 25 | 3 | 2617.2 | 39.83 |
| [`minidoc.analyzer._walkNested`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walknested-function-walknested-project-file-body-parent-namespace-name-src-minidoc-analyzer-ml-888770987) | `src/minidoc/analyzer.ml:596` | 27 | 17 | 16 | 29 | 4 | 1586.55 | 44.21 |
| [`minidoc.analyzer._walkStatementsForCalls`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walkstatementsforcalls-function-walkstatementsforcalls-project-file-caller-body-namespace-name-src-minidoc-analyzer-ml-1230640592) | `src/minidoc/analyzer.ml:499` | 60 | 44 | 28 | 59 | 6 | 4092.39 | 32.15 |
| [`minidoc.analyzer._warningScopeIncludes`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-warningscopeincludes-function-warningscopeincludes-scope-internal-src-minidoc-analyzer-ml-130785450) | `src/minidoc/analyzer.ml:225` | 5 | 5 | 3 | 2 | 1 | 124 | 69.69 |
| [`minidoc.analyzer.analyze`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-analyze-function-analyze-project-src-minidoc-analyzer-ml-448369014) | `src/minidoc/analyzer.ml:973` | 16 | 12 | 3 | 3 | 2 | 531.36 | 54.25 |
| [`minidoc.analyzer.expressionText`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-expressiontext-function-expressiontext-expr-src-minidoc-analyzer-ml-2077794936) | `src/minidoc/analyzer.ml:47` | 54 | 59 | 30 | 41 | 4 | 3687.58 | 33.2 |
| [`minidoc.app._countSeverity`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-countseverity-function-countseverity-project-severity-src-minidoc-app-ml-309679191) | `src/minidoc/app.ml:137` | 8 | 7 | 4 | 4 | 2 | 291.43 | 62.51 |
| [`minidoc.app._generationTimestamp`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-generationtimestamp-function-generationtimestamp-cfg-src-minidoc-app-ml-2138938087) | `src/minidoc/app.ml:105` | 9 | 11 | 5 | 4 | 1 | 433.82 | 60.05 |
| [`minidoc.app._hasArg`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-hasarg-function-hasarg-args-value-src-minidoc-app-ml-81945717) | `src/minidoc/app.ml:117` | 7 | 6 | 5 | 5 | 2 | 264.4 | 63.93 |
| [`minidoc.app._printDiagnostics`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-printdiagnostics-function-printdiagnostics-project-src-minidoc-app-ml-250768944) | `src/minidoc/app.ml:127` | 7 | 5 | 3 | 2 | 1 | 391.73 | 63.01 |
| [`minidoc.app._sourceDateEpochTimestamp`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-sourcedateepochtimestamp-function-sourcedateepochtimestamp-raw-src-minidoc-app-ml-1773202237) | `src/minidoc/app.ml:82` | 18 | 15 | 11 | 12 | 2 | 934.87 | 50.34 |
| [`minidoc.app.generate`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-generate-function-generate-cfg-src-minidoc-app-ml-1058954463) | `src/minidoc/app.ml:149` | 15 | 16 | 4 | 3 | 1 | 630.55 | 54.2 |
| [`minidoc.app.printHelp`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-printhelp-function-printhelp-src-minidoc-app-ml-210253363) | `src/minidoc/app.ml:38` | 39 | 37 | 1 | 0 | 0 | 455.81 | 46.54 |
| [`minidoc.app.printVersion`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-printversion-function-printversion-src-minidoc-app-ml-1716674331) | `src/minidoc/app.ml:32` | 3 | 1 | 1 | 0 | 0 | 31.7 | 78.95 |
| [`minidoc.app.render`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-render-function-render-project-src-minidoc-app-ml-643749544) | `src/minidoc/app.ml:168` | 12 | 11 | 6 | 7 | 2 | 471.12 | 56.93 |
| [`minidoc.app.run`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-run-function-run-args-src-minidoc-app-ml-382026988) | `src/minidoc/app.ml:184` | 30 | 30 | 13 | 12 | 1 | 1335.36 | 44.14 |
| [`minidoc.config._absoluteItems`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-absoluteitems-function-absoluteitems-items-base-src-minidoc-config-ml-2103852774) | `src/minidoc/config.ml:174` | 8 | 6 | 3 | 2 | 1 | 271.03 | 62.86 |
| [`minidoc.config._applyCli`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applycli-function-applycli-cfg-args-src-minidoc-config-ml-1158403242) | `src/minidoc/config.ml:348` | 68 | 60 | 54 | 102 | 3 | 4573.06 | 27.13 |
| [`minidoc.config._applyFormats`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applyformats-function-applyformats-cfg-raw-src-minidoc-config-ml-1993873735) | `src/minidoc/config.ml:313` | 14 | 15 | 6 | 7 | 2 | 678.28 | 54.37 |
| [`minidoc.config._applyGraphSelection`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applygraphselection-function-applygraphselection-cfg-raw-src-minidoc-config-ml-1585515829) | `src/minidoc/config.ml:330` | 15 | 12 | 5 | 7 | 2 | 587.76 | 54.28 |
| [`minidoc.config._applyMiniDoc`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applyminidoc-function-applyminidoc-cfg-path-src-minidoc-config-ml-2010845010) | `src/minidoc/config.ml:234` | 65 | 55 | 41 | 108 | 3 | 5600.49 | 28.69 |
| [`minidoc.config._applyProject`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applyproject-function-applyproject-cfg-path-src-minidoc-config-ml-943352422) | `src/minidoc/config.ml:200` | 30 | 21 | 18 | 34 | 4 | 1612.65 | 42.9 |
| [`minidoc.config._argValue`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-argvalue-function-argvalue-args-names-src-minidoc-config-ml-1852564532) | `src/minidoc/config.ml:303` | 7 | 6 | 4 | 4 | 2 | 278.83 | 63.9 |
| [`minidoc.config._boolean`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-boolean-function-boolean-value-src-minidoc-config-ml-1445243942) | `src/minidoc/config.ml:88` | 6 | 6 | 3 | 2 | 1 | 203.56 | 66.46 |
| [`minidoc.config._integer`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-integer-function-integer-value-src-minidoc-config-ml-85459038) | `src/minidoc/config.ml:97` | 19 | 18 | 8 | 8 | 2 | 760.77 | 50.85 |
| [`minidoc.config._manifestFromConfig`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-manifestfromconfig-function-manifestfromconfig-path-src-minidoc-config-ml-1230892800) | `src/minidoc/config.ml:185` | 12 | 9 | 5 | 5 | 2 | 461.82 | 57.13 |
| [`minidoc.config._rowArray`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-rowarray-function-rowarray-row-path-src-minidoc-config-ml-1448032416) | `src/minidoc/config.ml:150` | 5 | 4 | 2 | 1 | 1 | 239.72 | 67.82 |
| [`minidoc.config._rowBool`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-rowbool-function-rowbool-row-path-src-minidoc-config-ml-419549900) | `src/minidoc/config.ml:158` | 5 | 4 | 2 | 1 | 1 | 239.72 | 67.82 |
| [`minidoc.config._rowInt`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-rowint-function-rowint-row-path-src-minidoc-config-ml-1823284844) | `src/minidoc/config.ml:166` | 5 | 4 | 2 | 1 | 1 | 239.72 | 67.82 |
| [`minidoc.config._rows`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-rows-function-rows-path-src-minidoc-config-ml-689091660) | `src/minidoc/config.ml:119` | 20 | 18 | 8 | 10 | 2 | 1388.3 | 48.54 |
| [`minidoc.config._rowString`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-rowstring-function-rowstring-row-path-src-minidoc-config-ml-1029073784) | `src/minidoc/config.ml:142` | 5 | 4 | 2 | 1 | 1 | 239.72 | 67.82 |
| [`minidoc.config._stringArray`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-stringarray-function-stringarray-value-src-minidoc-config-ml-293563870) | `src/minidoc/config.ml:44` | 41 | 34 | 19 | 32 | 3 | 1772.51 | 39.52 |
| [`minidoc.config._unquote`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-unquote-function-unquote-value-src-minidoc-config-ml-1426627506) | `src/minidoc/config.ml:31` | 10 | 7 | 4 | 3 | 1 | 470 | 58.94 |
| [`minidoc.config.load`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-load-function-load-args-src-minidoc-config-ml-465999990) | `src/minidoc/config.ml:421` | 28 | 44 | 30 | 29 | 1 | 2748.45 | 40.32 |
| [`minidoc.doc_comments._cleanBlockLine`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-cleanblockline-function-cleanblockline-value-src-minidoc-doc-comments-ml-57678238) | `src/minidoc/doc_comments.ml:30` | 9 | 6 | 3 | 2 | 1 | 309.07 | 61.35 |
| [`minidoc.doc_comments._finishPending`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-finishpending-function-finishpending-docs-pending-kind-pending-start-pending-end-pending-start-line-pending-end-line-pending-lines-src-minidoc-doc-comments-ml-97374425) | `src/minidoc/doc_comments.ml:126` | 4 | 3 | 2 | 1 | 1 | 209.59 | 70.34 |
| [`minidoc.doc_comments._firstWord`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-firstword-function-firstword-value-src-minidoc-doc-comments-ml-523093244) | `src/minidoc/doc_comments.ml:42` | 12 | 11 | 5 | 4 | 1 | 549.84 | 56.6 |
| [`minidoc.doc_comments._parseBlock`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-parseblock-function-parseblock-target-kind-start-pos-end-pos-start-line-end-line-raw-lines-src-minidoc-doc-comments-ml-46187865) | `src/minidoc/doc_comments.ml:81` | 40 | 33 | 16 | 28 | 4 | 2217.46 | 39.47 |
| [`minidoc.doc_comments._stripOneSpace`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-striponespace-function-striponespace-value-src-minidoc-doc-comments-ml-2032218004) | `src/minidoc/doc_comments.ml:21` | 6 | 3 | 3 | 2 | 1 | 189.99 | 66.67 |
| [`minidoc.doc_comments._summaryAndDetails`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-summaryanddetails-function-summaryanddetails-body-src-minidoc-doc-comments-ml-726081093) | `src/minidoc/doc_comments.ml:57` | 21 | 16 | 6 | 9 | 3 | 753.4 | 50.21 |
| [`minidoc.doc_comments.documentationBefore`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-documentationbefore-function-documentationbefore-docs-source-position-src-minidoc-doc-comments-ml-2090428024) | `src/minidoc/doc_comments.ml:288` | 16 | 15 | 10 | 11 | 2 | 752.38 | 52.25 |
| [`minidoc.doc_comments.fileDocumentation`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-filedocumentation-function-filedocumentation-docs-src-minidoc-doc-comments-ml-859326424) | `src/minidoc/doc_comments.ml:256` | 26 | 25 | 7 | 8 | 2 | 1150.98 | 46.76 |
| [`minidoc.doc_comments.hasTag`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-hastag-function-hastag-doc-name-src-minidoc-doc-comments-ml-702183168) | `src/minidoc/doc_comments.ml:324` | 8 | 7 | 6 | 6 | 2 | 403.55 | 61.25 |
| [`minidoc.doc_comments.scan`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-scan-function-scan-source-src-minidoc-doc-comments-ml-935505990) | `src/minidoc/doc_comments.ml:137` | 107 | 87 | 22 | 39 | 3 | 4621.17 | 27.11 |
| [`minidoc.doc_comments.tagText`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-tagtext-function-tagtext-doc-name-key-src-minidoc-doc-comments-ml-458302547) | `src/minidoc/doc_comments.ml:310` | 9 | 8 | 8 | 8 | 2 | 511.82 | 59.14 |
| [`minidoc.graph._addNode`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-addnode-function-addnode-nodes-id-label-kind-maximum-src-minidoc-graph-ml-1721902335) | `src/minidoc/graph.ml:122` | 5 | 5 | 4 | 3 | 1 | 269.34 | 67.2 |
| [`minidoc.graph._entityOwned`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-entityowned-function-entityowned-project-id-src-minidoc-graph-ml-830551589) | `src/minidoc/graph.ml:67` | 16 | 11 | 8 | 13 | 3 | 728.36 | 52.62 |
| [`minidoc.graph._entityPackage`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-entitypackage-function-entitypackage-project-id-src-minidoc-graph-ml-50962349) | `src/minidoc/graph.ml:45` | 19 | 13 | 9 | 20 | 4 | 701.69 | 50.97 |
| [`minidoc.graph._hasEdge`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-hasedge-function-hasedge-relations-from-id-to-id-src-minidoc-graph-ml-1113589831) | `src/minidoc/graph.ml:130` | 7 | 6 | 5 | 5 | 2 | 296.13 | 63.59 |
| [`minidoc.graph._nodeIndex`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-nodeindex-function-nodeindex-nodes-id-src-minidoc-graph-ml-1580849361) | `src/minidoc/graph.ml:112` | 7 | 6 | 4 | 4 | 2 | 235.23 | 64.42 |
| [`minidoc.graph._relationVisible`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-relationvisible-function-relationvisible-project-relation-src-minidoc-graph-ml-1824775216) | `src/minidoc/graph.ml:86` | 8 | 9 | 4 | 3 | 1 | 351.86 | 61.93 |
| [`minidoc.graph._shortLabel`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-shortlabel-function-shortlabel-value-src-minidoc-graph-ml-523704082) | `src/minidoc/graph.ml:140` | 4 | 3 | 2 | 1 | 1 | 159.91 | 71.17 |
| [`minidoc.graph._sortNodes`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-sortnodes-function-sortnodes-nodes-src-minidoc-graph-ml-1625324464) | `src/minidoc/graph.ml:147` | 16 | 12 | 4 | 4 | 2 | 515.24 | 54.21 |
| [`minidoc.graph._symbolLabel`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-symbollabel-function-symbollabel-project-id-src-minidoc-graph-ml-931677709) | `src/minidoc/graph.ml:29` | 13 | 9 | 7 | 12 | 3 | 533.62 | 55.66 |
| [`minidoc.graph.hasRelations`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-hasrelations-function-hasrelations-project-relation-kind-src-minidoc-graph-ml-1807689357) | `src/minidoc/graph.ml:99` | 10 | 10 | 8 | 9 | 2 | 558.8 | 57.87 |
| [`minidoc.graph.renderSvg`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-rendersvg-function-rendersvg-project-relation-kind-title-src-minidoc-graph-ml-1835978035) | `src/minidoc/graph.ml:169` | 145 | 148 | 33 | 66 | 4 | 8606.15 | 20.86 |
| [`minidoc.loader._collectTree`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-collecttree-function-collecttree-path-root-cfg-files-seen-dirs-src-minidoc-loader-ml-648419853) | `src/minidoc/loader.ml:70` | 22 | 22 | 10 | 12 | 2 | 1368.97 | 47.41 |
| [`minidoc.loader._diagnostic`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-diagnostic-function-diagnostic-project-severity-code-path-source-position-message-src-minidoc-loader-ml-1275705122) | `src/minidoc/loader.ml:41` | 7 | 7 | 3 | 2 | 1 | 506.65 | 62.22 |
| [`minidoc.loader._fileId`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-fileid-function-fileid-root-path-src-minidoc-loader-ml-1546862180) | `src/minidoc/loader.ml:124` | 4 | 2 | 1 | 0 | 0 | 114.45 | 72.32 |
| [`minidoc.loader._findFile`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-findfile-function-findfile-project-path-src-minidoc-loader-ml-1327082201) | `src/minidoc/loader.ml:131` | 7 | 6 | 4 | 4 | 2 | 310.23 | 63.58 |
| [`minidoc.loader._hasLicenseHeader`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-haslicenseheader-function-haslicenseheader-source-src-minidoc-loader-ml-1760738160) | `src/minidoc/loader.ml:30` | 8 | 9 | 4 | 3 | 1 | 479.22 | 60.99 |
| [`minidoc.loader._isExcluded`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-isexcluded-function-isexcluded-path-root-cfg-src-minidoc-loader-ml-38851632) | `src/minidoc/loader.ml:51` | 16 | 17 | 10 | 14 | 3 | 1049.97 | 51.23 |
| [`minidoc.loader._isReachable`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-isreachable-function-isreachable-reachable-paths-path-src-minidoc-loader-ml-228567034) | `src/minidoc/loader.ml:217` | 3 | 1 | 1 | 0 | 0 | 85.11 | 75.94 |
| [`minidoc.loader._loadImports`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-loadimports-function-loadimports-project-file-queue-reachable-paths-src-minidoc-loader-ml-1451598457) | `src/minidoc/loader.ml:232` | 35 | 35 | 14 | 25 | 3 | 2307.18 | 40.89 |
| [`minidoc.loader._markReachable`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-markreachable-function-markreachable-project-path-src-minidoc-loader-ml-663354929) | `src/minidoc/loader.ml:223` | 6 | 5 | 4 | 4 | 2 | 317.29 | 64.97 |
| [`minidoc.loader._parseFile`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-parsefile-function-parsefile-project-path-reachable-src-minidoc-loader-ml-977724158) | `src/minidoc/loader.ml:167` | 45 | 37 | 15 | 24 | 4 | 2704.76 | 37.89 |
| [`minidoc.loader._programPackage`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-programpackage-function-programpackage-program-src-minidoc-loader-ml-12223177) | `src/minidoc/loader.ml:113` | 8 | 7 | 5 | 5 | 2 | 312.11 | 62.16 |
| [`minidoc.loader._resolveImport`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-resolveimport-function-resolveimport-request-importer-path-cfg-src-minidoc-loader-ml-117527558) | `src/minidoc/loader.ml:141` | 23 | 20 | 9 | 21 | 5 | 983.19 | 48.13 |
| [`minidoc.loader.discover`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-discover-function-discover-cfg-src-minidoc-loader-ml-1100276789) | `src/minidoc/loader.ml:96` | 14 | 14 | 5 | 5 | 2 | 599.09 | 54.88 |
| [`minidoc.loader.loadProject`](File-src-minidoc-loader-ml-952553188.md#function-function-minidoc-loader-loadproject-function-loadproject-cfg-src-minidoc-loader-ml-285126779) | `src/minidoc/loader.ml:271` | 50 | 46 | 19 | 32 | 4 | 2699.46 | 36.36 |
| [`minidoc.metrics._accumulateHalstead`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-accumulatehalstead-function-accumulatehalstead-accumulator-source-src-minidoc-metrics-ml-2018900496) | `src/minidoc/metrics.ml:111` | 20 | 15 | 12 | 16 | 3 | 820.99 | 49.6 |
| [`minidoc.metrics._appendFunctionAndNested`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-appendfunctionandnested-function-appendfunctionandnested-project-file-normalized-lines-node-output-src-minidoc-metrics-ml-283899290) | `src/minidoc/metrics.ml:616` | 4 | 2 | 1 | 0 | 0 | 179.85 | 70.94 |
| [`minidoc.metrics._appendFunctionMetric`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-appendfunctionmetric-function-appendfunctionmetric-project-file-normalized-lines-node-output-src-minidoc-metrics-ml-854357784) | `src/minidoc/metrics.ml:550` | 31 | 15 | 6 | 8 | 3 | 1295.01 | 44.87 |
| [`minidoc.metrics._asmBranches`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-asmbranches-function-asmbranches-expr-src-minidoc-metrics-ml-347559296) | `src/minidoc/metrics.ml:318` | 43 | 36 | 32 | 43 | 4 | 2282.8 | 36.55 |
| [`minidoc.metrics._booleanOperators`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-booleanoperators-function-booleanoperators-expr-src-minidoc-metrics-ml-643365584) | `src/minidoc/metrics.ml:280` | 34 | 32 | 19 | 25 | 3 | 1726.54 | 41.37 |
| [`minidoc.metrics._calculateDuplicates`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-calculateduplicates-function-calculateduplicates-sources-src-minidoc-metrics-ml-1078932023) | `src/minidoc/metrics.ml:677` | 55 | 43 | 9 | 24 | 6 | 2663.86 | 36.84 |
| [`minidoc.metrics._collectFunctions`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-collectfunctions-function-collectfunctions-project-file-normalized-lines-body-output-src-minidoc-metrics-ml-796792166) | `src/minidoc/metrics.ml:623` | 17 | 12 | 10 | 17 | 4 | 879.05 | 51.2 |
| [`minidoc.metrics._commentFlags`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-commentflags-function-commentflags-source-src-minidoc-metrics-ml-366355676) | `src/minidoc/metrics.ml:190` | 55 | 53 | 22 | 36 | 3 | 1826.52 | 36.24 |
| [`minidoc.metrics._complexity`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-complexity-function-complexity-body-src-minidoc-metrics-ml-1173839345) | `src/minidoc/metrics.ml:441` | 4 | 2 | 1 | 0 | 0 | 106.61 | 72.53 |
| [`minidoc.metrics._coverageMetric`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-coveragemetric-function-coveragemetric-documented-total-src-minidoc-metrics-ml-216051785) | `src/minidoc/metrics.ml:787` | 5 | 4 | 2 | 1 | 1 | 180.94 | 68.68 |
| [`minidoc.metrics._duplicatedLineCount`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-duplicatedlinecount-function-duplicatedlinecount-source-data-src-minidoc-metrics-ml-1920902583) | `src/minidoc/metrics.ml:735` | 9 | 7 | 3 | 3 | 2 | 217.13 | 62.42 |
| [`minidoc.metrics._findFunctionSymbol`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-findfunctionsymbol-function-findfunctionsymbol-project-file-id-position-src-minidoc-metrics-ml-877065609) | `src/minidoc/metrics.ml:448` | 9 | 8 | 6 | 6 | 2 | 484.48 | 59.57 |
| [`minidoc.metrics._finishHalstead`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-finishhalstead-function-finishhalstead-accumulator-src-minidoc-metrics-ml-1252759367) | `src/minidoc/metrics.ml:134` | 24 | 11 | 4 | 3 | 1 | 729.46 | 49.31 |
| [`minidoc.metrics._functionEndLine`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-functionendline-function-functionendline-normalized-lines-start-line-src-minidoc-metrics-ml-1697392997) | `src/minidoc/metrics.ml:484` | 15 | 13 | 9 | 12 | 3 | 609.51 | 53.63 |
| [`minidoc.metrics._functionTotals`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-functiontotals-function-functiontotals-function-metrics-file-id-src-minidoc-metrics-ml-667394573) | `src/minidoc/metrics.ml:747` | 21 | 20 | 6 | 12 | 3 | 692.77 | 50.46 |
| [`minidoc.metrics._halstead`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-halstead-function-halstead-source-src-minidoc-metrics-ml-1602355904) | `src/minidoc/metrics.ml:161` | 3 | 1 | 1 | 0 | 0 | 65.73 | 76.73 |
| [`minidoc.metrics._isDocumentable`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-isdocumentable-function-isdocumentable-doc-symbol-src-minidoc-metrics-ml-143533948) | `src/minidoc/metrics.ml:771` | 5 | 4 | 2 | 1 | 1 | 245.34 | 67.75 |
| [`minidoc.metrics._isDocumentableCallable`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-isdocumentablecallable-function-isdocumentablecallable-doc-symbol-src-minidoc-metrics-ml-755917228) | `src/minidoc/metrics.ml:779` | 5 | 4 | 2 | 1 | 1 | 197.42 | 68.41 |
| [`minidoc.metrics._isMeasuredFile`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-ismeasuredfile-function-ismeasuredfile-project-file-src-minidoc-metrics-ml-1753902428) | `src/minidoc/metrics.ml:795` | 3 | 1 | 1 | 0 | 0 | 120 | 74.9 |
| [`minidoc.metrics._maintainability`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-maintainability-function-maintainability-volume-cyclomatic-source-lines-src-minidoc-metrics-ml-27050618) | `src/minidoc/metrics.ml:538` | 9 | 11 | 5 | 4 | 1 | 459.04 | 59.87 |
| [`minidoc.metrics._markWindow`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-markwindow-function-markwindow-source-data-start-count-src-minidoc-metrics-ml-1506590456) | `src/minidoc/metrics.ml:653` | 7 | 4 | 3 | 2 | 1 | 205.13 | 64.97 |
| [`minidoc.metrics._newHalsteadAccumulator`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-newhalsteadaccumulator-function-newhalsteadaccumulator-src-minidoc-metrics-ml-495882533) | `src/minidoc/metrics.ml:83` | 3 | 1 | 1 | 0 | 0 | 118.03 | 74.95 |
| [`minidoc.metrics._normalizedLines`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-normalizedlines-function-normalizedlines-source-src-minidoc-metrics-ml-623941354) | `src/minidoc/metrics.ml:167` | 20 | 18 | 8 | 9 | 2 | 1105.89 | 49.23 |
| [`minidoc.metrics._recordOperand`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-recordoperand-function-recordoperand-accumulator-value-src-minidoc-metrics-ml-2035509488) | `src/minidoc/metrics.ml:100` | 8 | 5 | 2 | 1 | 1 | 279.68 | 62.9 |
| [`minidoc.metrics._recordOperator`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-recordoperator-function-recordoperator-accumulator-value-src-minidoc-metrics-ml-1977189644) | `src/minidoc/metrics.ml:89` | 8 | 5 | 2 | 1 | 1 | 279.68 | 62.9 |
| [`minidoc.metrics._round2`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-round2-function-round2-value-src-minidoc-metrics-ml-954408678) | `src/minidoc/metrics.ml:68` | 3 | 1 | 1 | 0 | 0 | 66.61 | 76.69 |
| [`minidoc.metrics._sourceData`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourcedata-function-sourcedata-file-src-minidoc-metrics-ml-963878849) | `src/minidoc/metrics.ml:248` | 29 | 16 | 7 | 13 | 3 | 905.86 | 46.45 |
| [`minidoc.metrics._sourceDataById`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourcedatabyid-function-sourcedatabyid-sources-file-id-src-minidoc-metrics-ml-1425402771) | `src/minidoc/metrics.ml:643` | 7 | 6 | 4 | 4 | 2 | 239.75 | 64.36 |
| [`minidoc.metrics._sourceLines`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourcelines-function-sourcelines-source-src-minidoc-metrics-ml-1184977954) | `src/minidoc/metrics.ml:502` | 14 | 10 | 7 | 9 | 3 | 598.26 | 54.61 |
| [`minidoc.metrics._sourceSlice`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourceslice-function-sourceslice-source-start-line-end-line-src-minidoc-metrics-ml-2074663469) | `src/minidoc/metrics.ml:519` | 16 | 17 | 6 | 5 | 1 | 691.85 | 53.04 |
| [`minidoc.metrics._startsFunction`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-startsfunction-function-startsfunction-line-src-minidoc-metrics-ml-1539691709) | `src/minidoc/metrics.ml:460` | 9 | 4 | 4 | 3 | 1 | 446.93 | 60.09 |
| [`minidoc.metrics._startsOperator`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-startsoperator-function-startsoperator-line-src-minidoc-metrics-ml-84289733) | `src/minidoc/metrics.ml:477` | 4 | 2 | 1 | 0 | 0 | 165.67 | 71.19 |
| [`minidoc.metrics._tokenValue`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-tokenvalue-function-tokenvalue-tokens-index-src-minidoc-metrics-ml-437919237) | `src/minidoc/metrics.ml:74` | 6 | 5 | 2 | 1 | 1 | 284.6 | 65.57 |
| [`minidoc.metrics._touchNesting`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-touchnesting-function-touchnesting-accumulator-nesting-src-minidoc-metrics-ml-1877717551) | `src/minidoc/metrics.ml:364` | 4 | 3 | 2 | 1 | 1 | 97.67 | 72.67 |
| [`minidoc.metrics._walkComplexity`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-walkcomplexity-function-walkcomplexity-body-accumulator-nesting-src-minidoc-metrics-ml-286232695) | `src/minidoc/metrics.ml:371` | 67 | 51 | 30 | 50 | 4 | 3947.23 | 30.95 |
| [`minidoc.metrics._walkNestedFunctions`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-walknestedfunctions-function-walknestedfunctions-project-file-normalized-lines-body-output-src-minidoc-metrics-ml-853314118) | `src/minidoc/metrics.ml:584` | 29 | 19 | 16 | 29 | 4 | 1681.63 | 43.36 |
| [`minidoc.metrics._windowFingerprint`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-windowfingerprint-function-windowfingerprint-lines-start-count-src-minidoc-metrics-ml-470461909) | `src/minidoc/metrics.ml:663` | 11 | 9 | 3 | 3 | 2 | 346.79 | 59.09 |
| [`minidoc.metrics.calculate`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-calculate-function-calculate-project-src-minidoc-metrics-ml-1071316968) | `src/minidoc/metrics.ml:802` | 169 | 122 | 35 | 86 | 5 | 8063.63 | 19.34 |
| [`minidoc.model.defaultConfig`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-defaultconfig-function-defaultconfig-src-minidoc-model-ml-878829745) | `src/minidoc/model.ml:320` | 37 | 1 | 1 | 0 | 0 | 437.22 | 47.17 |
| [`minidoc.model.emptyDocBlock`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptydocblock-function-emptydocblock-src-minidoc-model-ml-1867502199) | `src/minidoc/model.ml:360` | 3 | 1 | 1 | 0 | 0 | 121.84 | 74.85 |
| [`minidoc.model.emptyHalsteadMetrics`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptyhalsteadmetrics-function-emptyhalsteadmetrics-src-minidoc-model-ml-480079767) | `src/minidoc/model.ml:386` | 3 | 1 | 1 | 0 | 0 | 96.34 | 75.57 |
| [`minidoc.model.emptyProject`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptyproject-function-emptyproject-config-root-dir-src-minidoc-model-ml-510474277) | `src/minidoc/model.ml:380` | 3 | 1 | 1 | 0 | 0 | 168 | 73.88 |
| [`minidoc.model.emptyProjectMetrics`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptyprojectmetrics-function-emptyprojectmetrics-src-minidoc-model-ml-496127141) | `src/minidoc/model.ml:392` | 5 | 3 | 1 | 0 | 0 | 397.62 | 66.42 |
| [`minidoc.model.newDiagnostic`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-newdiagnostic-function-newdiagnostic-severity-code-file-path-line-column-message-src-minidoc-model-ml-1480640064) | `src/minidoc/model.ml:372` | 3 | 1 | 1 | 0 | 0 | 121.84 | 74.85 |
| [`minidoc.ordering._entityName`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-entityname-function-entityname-project-id-src-minidoc-ordering-ml-125151227) | `src/minidoc/ordering.ml:123` | 13 | 9 | 7 | 12 | 3 | 533.62 | 55.66 |
| [`minidoc.ordering._sortCloneGroups`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortclonegroups-function-sortclonegroups-values-src-minidoc-ordering-ml-737876755) | `src/minidoc/ordering.ml:184` | 9 | 7 | 3 | 2 | 1 | 529.66 | 59.71 |
| [`minidoc.ordering._sortDiagnostics`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortdiagnostics-function-sortdiagnostics-values-src-minidoc-ordering-ml-1302344115) | `src/minidoc/ordering.ml:112` | 8 | 6 | 3 | 2 | 1 | 493.48 | 61.04 |
| [`minidoc.ordering._sortFileMetrics`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortfilemetrics-function-sortfilemetrics-values-src-minidoc-ordering-ml-302193879) | `src/minidoc/ordering.ml:151` | 8 | 6 | 3 | 2 | 1 | 293.25 | 62.62 |
| [`minidoc.ordering._sortFiles`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortfiles-function-sortfiles-values-src-minidoc-ordering-ml-851369319) | `src/minidoc/ordering.ml:79` | 8 | 6 | 3 | 2 | 1 | 293.25 | 62.62 |
| [`minidoc.ordering._sortFunctionMetrics`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortfunctionmetrics-function-sortfunctionmetrics-values-src-minidoc-ordering-ml-923823459) | `src/minidoc/ordering.ml:162` | 8 | 6 | 3 | 2 | 1 | 395 | 61.72 |
| [`minidoc.ordering._sortImports`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortimports-function-sortimports-values-src-minidoc-ordering-ml-1414675255) | `src/minidoc/ordering.ml:101` | 8 | 6 | 3 | 2 | 1 | 395 | 61.72 |
| [`minidoc.ordering._sortOccurrences`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortoccurrences-function-sortoccurrences-values-src-minidoc-ordering-ml-758798339) | `src/minidoc/ordering.ml:173` | 8 | 6 | 3 | 2 | 1 | 346.79 | 62.11 |
| [`minidoc.ordering._sortRelations`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortrelations-function-sortrelations-project-values-src-minidoc-ordering-ml-536661100) | `src/minidoc/ordering.ml:139` | 9 | 7 | 3 | 2 | 1 | 485.97 | 59.97 |
| [`minidoc.ordering._sortSymbols`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortsymbols-function-sortsymbols-values-src-minidoc-ordering-ml-2029087899) | `src/minidoc/ordering.ml:90` | 8 | 6 | 3 | 2 | 1 | 395 | 61.72 |
| [`minidoc.ordering._sortWithKeys`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-sortwithkeys-function-sortwithkeys-values-keys-src-minidoc-ordering-ml-94474953) | `src/minidoc/ordering.ml:28` | 48 | 40 | 12 | 27 | 4 | 1563.79 | 39.35 |
| [`minidoc.ordering.apply`](File-src-minidoc-ordering-ml-677118389.md#function-function-minidoc-ordering-apply-function-apply-project-src-minidoc-ordering-ml-520226802) | `src/minidoc/ordering.ml:197` | 18 | 13 | 4 | 4 | 2 | 955.58 | 51.21 |
| [`minidoc.render_html._css`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-css-function-css-src-minidoc-render-html-ml-1625528009) | `src/minidoc/render_html.ml:745` | 3 | 1 | 1 | 0 | 0 | 22.46 | 80 |
| [`minidoc.render_html._dependencies`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-dependencies-function-dependencies-project-src-minidoc-render-html-ml-1815882224) | `src/minidoc/render_html.ml:580` | 15 | 13 | 5 | 9 | 3 | 842 | 53.19 |
| [`minidoc.render_html._dependencyReferenceCount`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-dependencyreferencecount-function-dependencyreferencecount-project-dependency-id-src-minidoc-render-html-ml-2092930733) | `src/minidoc/render_html.ml:564` | 13 | 14 | 7 | 11 | 3 | 665.96 | 54.99 |
| [`minidoc.render_html._diagnostics`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-diagnostics-function-diagnostics-project-src-minidoc-render-html-ml-1860874224) | `src/minidoc/render_html.ml:617` | 12 | 11 | 3 | 2 | 1 | 786.06 | 55.78 |
| [`minidoc.render_html._file`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-file-function-file-project-file-src-minidoc-render-html-ml-490889384) | `src/minidoc/render_html.ml:520` | 41 | 43 | 22 | 43 | 4 | 3375.71 | 37.15 |
| [`minidoc.render_html._fileById`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-filebyid-function-filebyid-project-id-src-minidoc-render-html-ml-435004607) | `src/minidoc/render_html.ml:53` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_html._filePage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-filepage-function-filepage-file-src-minidoc-render-html-ml-419870347) | `src/minidoc/render_html.ml:80` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_html._files`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-files-function-files-project-src-minidoc-render-html-ml-1929023196) | `src/minidoc/render_html.ml:361` | 17 | 16 | 6 | 12 | 3 | 903.52 | 51.65 |
| [`minidoc.render_html._fileVisible`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-filevisible-function-filevisible-project-file-src-minidoc-render-html-ml-1061123602) | `src/minidoc/render_html.ml:22` | 4 | 3 | 2 | 1 | 1 | 191.76 | 70.61 |
| [`minidoc.render_html._graphEnabled`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-graphenabled-function-graphenabled-project-relation-kind-configured-src-minidoc-render-html-ml-788187789) | `src/minidoc/render_html.ml:73` | 4 | 3 | 2 | 1 | 1 | 159.91 | 71.17 |
| [`minidoc.render_html._graphPage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-graphpage-function-graphpage-project-title-filename-description-src-minidoc-render-html-ml-1193469419) | `src/minidoc/render_html.ml:718` | 5 | 4 | 2 | 1 | 1 | 315.77 | 66.98 |
| [`minidoc.render_html._hasDependencies`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-hasdependencies-function-hasdependencies-project-src-minidoc-render-html-ml-181909412) | `src/minidoc/render_html.ml:63` | 7 | 6 | 4 | 4 | 2 | 351.75 | 63.2 |
| [`minidoc.render_html._home`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-home-function-home-project-src-minidoc-render-html-ml-2034429428) | `src/minidoc/render_html.ml:325` | 33 | 36 | 11 | 13 | 3 | 2621.84 | 41.46 |
| [`minidoc.render_html._isType`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-istype-function-istype-doc-symbol-src-minidoc-render-html-ml-1873039548) | `src/minidoc/render_html.ml:37` | 3 | 1 | 1 | 0 | 0 | 121.11 | 74.87 |
| [`minidoc.render_html._javascript`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-javascript-function-javascript-src-minidoc-render-html-ml-771571021) | `src/minidoc/render_html.ml:751` | 3 | 1 | 1 | 0 | 0 | 22.46 | 80 |
| [`minidoc.render_html._layout`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-layout-function-layout-project-title-content-src-minidoc-render-html-ml-793745437) | `src/minidoc/render_html.ml:287` | 14 | 15 | 5 | 4 | 1 | 1173.62 | 52.83 |
| [`minidoc.render_html._markdownHtml`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-markdownhtml-function-markdownhtml-text-src-minidoc-render-html-ml-1903815168) | `src/minidoc/render_html.ml:122` | 38 | 44 | 17 | 30 | 3 | 2586.64 | 39.36 |
| [`minidoc.render_html._metrics`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-metrics-function-metrics-project-src-minidoc-render-html-ml-1447599980) | `src/minidoc/render_html.ml:632` | 76 | 70 | 14 | 31 | 5 | 8435.83 | 29.6 |
| [`minidoc.render_html._ownerType`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-ownertype-function-ownertype-project-doc-symbol-src-minidoc-render-html-ml-1808108667) | `src/minidoc/render_html.ml:98` | 10 | 9 | 5 | 6 | 2 | 299.56 | 60.17 |
| [`minidoc.render_html._package`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-package-function-package-project-package-name-src-minidoc-render-html-ml-821137262) | `src/minidoc/render_html.ml:493` | 24 | 23 | 12 | 23 | 3 | 1476.64 | 46.09 |
| [`minidoc.render_html._packagePage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-packagepage-function-packagepage-name-src-minidoc-render-html-ml-1754427610) | `src/minidoc/render_html.ml:92` | 3 | 1 | 1 | 0 | 0 | 66.61 | 76.69 |
| [`minidoc.render_html._packages`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-packages-function-packages-project-src-minidoc-render-html-ml-152823440) | `src/minidoc/render_html.ml:304` | 11 | 11 | 5 | 6 | 2 | 483.31 | 57.82 |
| [`minidoc.render_html._packagesIndex`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-packagesindex-function-packagesindex-project-src-minidoc-render-html-ml-1876075040) | `src/minidoc/render_html.ml:478` | 12 | 8 | 3 | 3 | 2 | 486.26 | 57.24 |
| [`minidoc.render_html._projectDescription`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-projectdescription-function-projectdescription-project-src-minidoc-render-html-ml-104319708) | `src/minidoc/render_html.ml:318` | 4 | 3 | 2 | 1 | 1 | 130.8 | 71.78 |
| [`minidoc.render_html._searchIndex`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-searchindex-function-searchindex-project-src-minidoc-render-html-ml-1008698196) | `src/minidoc/render_html.ml:726` | 16 | 14 | 5 | 9 | 3 | 955.31 | 52.19 |
| [`minidoc.render_html._sortTags`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-sorttags-function-sorttags-tags-src-minidoc-render-html-ml-98000292) | `src/minidoc/render_html.ml:173` | 16 | 12 | 4 | 4 | 2 | 515.24 | 54.21 |
| [`minidoc.render_html._symbolById`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbolbyid-function-symbolbyid-project-id-src-minidoc-render-html-ml-761027075) | `src/minidoc/render_html.ml:43` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_html._symbolFixtureRole`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbolfixturerole-function-symbolfixturerole-doc-symbol-src-minidoc-render-html-ml-165079326) | `src/minidoc/render_html.ml:418` | 7 | 5 | 3 | 3 | 2 | 257.47 | 64.28 |
| [`minidoc.render_html._symbolHasTag`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbolhastag-function-symbolhastag-doc-symbol-name-src-minidoc-render-html-ml-1399844595) | `src/minidoc/render_html.ml:397` | 7 | 6 | 4 | 4 | 2 | 263.22 | 64.08 |
| [`minidoc.render_html._symbolHtml`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbolhtml-function-symbolhtml-project-doc-symbol-heading-src-minidoc-render-html-ml-426613973) | `src/minidoc/render_html.ml:192` | 92 | 94 | 43 | 80 | 3 | 7991.64 | 24.05 |
| [`minidoc.render_html._symbolLink`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbollink-function-symbollink-project-doc-symbol-src-minidoc-render-html-ml-747058409) | `src/minidoc/render_html.ml:111` | 8 | 9 | 4 | 3 | 1 | 423.05 | 61.37 |
| [`minidoc.render_html._symbols`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbols-function-symbols-project-src-minidoc-render-html-ml-1501047772) | `src/minidoc/render_html.ml:381` | 13 | 10 | 4 | 6 | 3 | 707.45 | 55.21 |
| [`minidoc.render_html._symbolTagKeys`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symboltagkeys-function-symboltagkeys-doc-symbol-name-src-minidoc-render-html-ml-1691570861) | `src/minidoc/render_html.ml:407` | 8 | 7 | 5 | 5 | 2 | 407.27 | 61.35 |
| [`minidoc.render_html._tagValue`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-tagvalue-function-tagvalue-doc-symbol-name-src-minidoc-render-html-ml-2064001193) | `src/minidoc/render_html.ml:163` | 7 | 6 | 4 | 4 | 2 | 296.13 | 63.72 |
| [`minidoc.render_html._tests`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-tests-function-tests-project-src-minidoc-render-html-ml-339301540) | `src/minidoc/render_html.ml:428` | 47 | 47 | 19 | 43 | 4 | 3151.41 | 36.47 |
| [`minidoc.render_html._type`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-type-function-type-project-type-symbol-src-minidoc-render-html-ml-1278264173) | `src/minidoc/render_html.ml:598` | 16 | 15 | 6 | 8 | 3 | 1019.29 | 51.86 |
| [`minidoc.render_html._typePage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-typepage-function-typepage-doc-symbol-src-minidoc-render-html-ml-496705942) | `src/minidoc/render_html.ml:86` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_html._visible`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-visible-function-visible-project-doc-symbol-src-minidoc-render-html-ml-419580155) | `src/minidoc/render_html.ml:29` | 5 | 4 | 3 | 2 | 1 | 232.19 | 67.78 |
| [`minidoc.render_html._writeGenerated`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-writegenerated-function-writegenerated-root-generated-relative-path-content-src-minidoc-render-html-ml-979553409) | `src/minidoc/render_html.ml:757` | 5 | 4 | 2 | 1 | 1 | 222.91 | 68.04 |
| [`minidoc.render_html.render`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-render-function-render-project-src-minidoc-render-html-ml-961220700) | `src/minidoc/render_html.ml:766` | 81 | 93 | 39 | 59 | 4 | 7345.4 | 26.05 |
| [`minidoc.render_markdown._appendSymbol`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-appendsymbol-function-appendsymbol-writer-project-doc-symbol-heading-level-src-minidoc-render-markdown-ml-173001445) | `src/minidoc/render_markdown.ml:230` | 38 | 39 | 10 | 16 | 3 | 2211.77 | 40.77 |
| [`minidoc.render_markdown._appendTagSections`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-appendtagsections-function-appendtagsections-writer-doc-symbol-src-minidoc-render-markdown-ml-1272647537) | `src/minidoc/render_markdown.ml:123` | 85 | 79 | 36 | 71 | 3 | 4521.6 | 27.48 |
| [`minidoc.render_markdown._dependencyReferenceCount`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-dependencyreferencecount-function-dependencyreferencecount-project-dependency-id-src-minidoc-render-markdown-ml-648139245) | `src/minidoc/render_markdown.ml:548` | 13 | 14 | 7 | 11 | 3 | 665.96 | 54.99 |
| [`minidoc.render_markdown._fileById`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-filebyid-function-filebyid-project-id-src-minidoc-render-markdown-ml-579038907) | `src/minidoc/render_markdown.ml:54` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_markdown._filePage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-filepage-function-filepage-file-src-minidoc-render-markdown-ml-589252103) | `src/minidoc/render_markdown.ml:81` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_markdown._fileVisible`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-filevisible-function-filevisible-project-file-src-minidoc-render-markdown-ml-2065479994) | `src/minidoc/render_markdown.ml:23` | 4 | 3 | 2 | 1 | 1 | 191.76 | 70.61 |
| [`minidoc.render_markdown._graphEnabled`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-graphenabled-function-graphenabled-project-relation-kind-configured-src-minidoc-render-markdown-ml-1992356813) | `src/minidoc/render_markdown.ml:74` | 4 | 3 | 2 | 1 | 1 | 159.91 | 71.17 |
| [`minidoc.render_markdown._hasDependencies`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-hasdependencies-function-hasdependencies-project-src-minidoc-render-markdown-ml-386212480) | `src/minidoc/render_markdown.ml:64` | 7 | 6 | 4 | 4 | 2 | 351.75 | 63.2 |
| [`minidoc.render_markdown._homeName`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-homename-function-homename-project-src-minidoc-render-markdown-ml-1694838250) | `src/minidoc/render_markdown.ml:720` | 4 | 3 | 2 | 1 | 1 | 88 | 72.98 |
| [`minidoc.render_markdown._indentedCode`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-indentedcode-function-indentedcode-text-src-minidoc-render-markdown-ml-511409356) | `src/minidoc/render_markdown.ml:618` | 10 | 6 | 3 | 3 | 2 | 318.95 | 60.25 |
| [`minidoc.render_markdown._isType`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-istype-function-istype-doc-symbol-src-minidoc-render-markdown-ml-1542253352) | `src/minidoc/render_markdown.ml:38` | 3 | 1 | 1 | 0 | 0 | 121.11 | 74.87 |
| [`minidoc.render_markdown._ownerType`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-ownertype-function-ownertype-project-doc-symbol-src-minidoc-render-markdown-ml-2082832311) | `src/minidoc/render_markdown.ml:99` | 10 | 9 | 5 | 6 | 2 | 299.56 | 60.17 |
| [`minidoc.render_markdown._packagePage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-packagepage-function-packagepage-name-src-minidoc-render-markdown-ml-282590802) | `src/minidoc/render_markdown.ml:93` | 3 | 1 | 1 | 0 | 0 | 66.61 | 76.69 |
| [`minidoc.render_markdown._packages`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-packages-function-packages-project-src-minidoc-render-markdown-ml-204965004) | `src/minidoc/render_markdown.ml:271` | 11 | 11 | 5 | 6 | 2 | 483.31 | 57.82 |
| [`minidoc.render_markdown._projectDescription`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-projectdescription-function-projectdescription-project-src-minidoc-render-markdown-ml-1404482280) | `src/minidoc/render_markdown.ml:285` | 4 | 3 | 2 | 1 | 1 | 130.8 | 71.78 |
| [`minidoc.render_markdown._renderDependencies`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderdependencies-function-renderdependencies-project-src-minidoc-render-markdown-ml-1169613352) | `src/minidoc/render_markdown.ml:564` | 16 | 14 | 5 | 9 | 3 | 929.18 | 52.28 |
| [`minidoc.render_markdown._renderDiagnostics`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderdiagnostics-function-renderdiagnostics-project-src-minidoc-render-markdown-ml-478275432) | `src/minidoc/render_markdown.ml:604` | 11 | 10 | 3 | 2 | 1 | 795.78 | 56.57 |
| [`minidoc.render_markdown._renderFile`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderfile-function-renderfile-project-file-src-minidoc-render-markdown-ml-1369235800) | `src/minidoc/render_markdown.ml:501` | 44 | 44 | 22 | 43 | 4 | 3135.37 | 36.71 |
| [`minidoc.render_markdown._renderFiles`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderfiles-function-renderfiles-project-src-minidoc-render-markdown-ml-234256500) | `src/minidoc/render_markdown.ml:340` | 17 | 16 | 6 | 12 | 3 | 956.59 | 51.48 |
| [`minidoc.render_markdown._renderGraphPage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendergraphpage-function-rendergraphpage-project-title-image-name-description-src-minidoc-render-markdown-ml-1268984211) | `src/minidoc/render_markdown.ml:749` | 8 | 7 | 2 | 1 | 1 | 425.73 | 61.62 |
| [`minidoc.render_markdown._renderHome`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderhome-function-renderhome-project-src-minidoc-render-markdown-ml-1392245616) | `src/minidoc/render_markdown.ml:292` | 45 | 47 | 14 | 17 | 3 | 3249.59 | 37.46 |
| [`minidoc.render_markdown._renderMetrics`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendermetrics-function-rendermetrics-project-src-minidoc-render-markdown-ml-1897863144) | `src/minidoc/render_markdown.ml:631` | 81 | 75 | 14 | 31 | 5 | 8501.63 | 28.97 |
| [`minidoc.render_markdown._renderPackage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderpackage-function-renderpackage-project-package-name-src-minidoc-render-markdown-ml-1076586018) | `src/minidoc/render_markdown.ml:472` | 26 | 23 | 12 | 23 | 3 | 1440 | 45.4 |
| [`minidoc.render_markdown._renderPackagesIndex`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderpackagesindex-function-renderpackagesindex-project-src-minidoc-render-markdown-ml-593340696) | `src/minidoc/render_markdown.ml:458` | 11 | 7 | 3 | 3 | 2 | 461.82 | 58.22 |
| [`minidoc.render_markdown._renderSidebar`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendersidebar-function-rendersidebar-project-src-minidoc-render-markdown-ml-197078972) | `src/minidoc/render_markdown.ml:727` | 19 | 20 | 9 | 9 | 2 | 1262.29 | 49.18 |
| [`minidoc.render_markdown._renderSymbols`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendersymbols-function-rendersymbols-project-src-minidoc-render-markdown-ml-878417144) | `src/minidoc/render_markdown.ml:360` | 13 | 10 | 4 | 6 | 3 | 754.43 | 55.01 |
| [`minidoc.render_markdown._renderTests`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendertests-function-rendertests-project-src-minidoc-render-markdown-ml-274041520) | `src/minidoc/render_markdown.ml:407` | 48 | 48 | 19 | 43 | 4 | 3251.69 | 36.18 |
| [`minidoc.render_markdown._renderType`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendertype-function-rendertype-project-type-symbol-src-minidoc-render-markdown-ml-1036185877) | `src/minidoc/render_markdown.ml:583` | 18 | 13 | 7 | 10 | 3 | 1026.71 | 50.59 |
| [`minidoc.render_markdown._sortTags`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-sorttags-function-sorttags-tags-src-minidoc-render-markdown-ml-1028920960) | `src/minidoc/render_markdown.ml:211` | 16 | 12 | 4 | 4 | 2 | 515.24 | 54.21 |
| [`minidoc.render_markdown._symbolById`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symbolbyid-function-symbolbyid-project-id-src-minidoc-render-markdown-ml-606316783) | `src/minidoc/render_markdown.ml:44` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_markdown._symbolFixtureRole`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symbolfixturerole-function-symbolfixturerole-doc-symbol-src-minidoc-render-markdown-ml-1692549846) | `src/minidoc/render_markdown.ml:397` | 7 | 5 | 3 | 3 | 2 | 257.47 | 64.28 |
| [`minidoc.render_markdown._symbolHasTag`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symbolhastag-function-symbolhastag-doc-symbol-name-src-minidoc-render-markdown-ml-1195790431) | `src/minidoc/render_markdown.ml:376` | 7 | 6 | 4 | 4 | 2 | 263.22 | 64.08 |
| [`minidoc.render_markdown._symbolLink`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symbollink-function-symbollink-project-doc-symbol-src-minidoc-render-markdown-ml-1288607865) | `src/minidoc/render_markdown.ml:112` | 8 | 9 | 4 | 3 | 1 | 423.05 | 61.37 |
| [`minidoc.render_markdown._symbolTagKeys`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symboltagkeys-function-symboltagkeys-doc-symbol-name-src-minidoc-render-markdown-ml-769449549) | `src/minidoc/render_markdown.ml:386` | 8 | 7 | 5 | 5 | 2 | 407.27 | 61.35 |
| [`minidoc.render_markdown._typePage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-typepage-function-typepage-doc-symbol-src-minidoc-render-markdown-ml-1928748606) | `src/minidoc/render_markdown.ml:87` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_markdown._visible`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-visible-function-visible-project-doc-symbol-src-minidoc-render-markdown-ml-1836227959) | `src/minidoc/render_markdown.ml:30` | 5 | 4 | 3 | 2 | 1 | 232.19 | 67.78 |
| [`minidoc.render_markdown._writeGenerated`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-writegenerated-function-writegenerated-root-generated-relative-path-content-src-minidoc-render-markdown-ml-1480454785) | `src/minidoc/render_markdown.ml:760` | 9 | 8 | 4 | 3 | 1 | 491.14 | 59.8 |
| [`minidoc.render_markdown.render`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-render-function-render-project-src-minidoc-render-markdown-ml-12269608) | `src/minidoc/render_markdown.ml:773` | 80 | 89 | 38 | 59 | 4 | 6165.32 | 26.84 |
| [`minidoc.util._gitDirectory`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-gitdirectory-function-gitdirectory-root-src-minidoc-util-ml-1506255809) | `src/minidoc/util.ml:304` | 9 | 9 | 3 | 2 | 1 | 464.08 | 60.11 |
| [`minidoc.util._optionalText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-optionaltext-function-optionaltext-path-src-minidoc-util-ml-1436453920) | `src/minidoc/util.ml:295` | 6 | 6 | 3 | 2 | 1 | 217.13 | 66.26 |
| [`minidoc.util._packedRevision`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-packedrevision-function-packedrevision-path-reference-src-minidoc-util-ml-855697853) | `src/minidoc/util.ml:316` | 12 | 12 | 8 | 9 | 2 | 693.35 | 55.49 |
| [`minidoc.util._stringLess`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-stringless-function-stringless-left-right-src-minidoc-util-ml-1708326844) | `src/minidoc/util.ml:499` | 13 | 13 | 5 | 6 | 2 | 466.31 | 56.34 |
| [`minidoc.util.absolutePath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-absolutepath-function-absolutepath-path-base-src-minidoc-util-ml-514406695) | `src/minidoc/util.ml:133` | 5 | 5 | 4 | 3 | 1 | 214.05 | 67.9 |
| [`minidoc.util.addUnique`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-addunique-function-addunique-values-value-src-minidoc-util-ml-1616123664) | `src/minidoc/util.ml:564` | 4 | 3 | 2 | 1 | 1 | 105.49 | 72.43 |
| [`minidoc.util.alphabeticalLess`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-alphabeticalless-function-alphabeticalless-left-right-src-minidoc-util-ml-727255026) | `src/minidoc/util.ml:517` | 8 | 7 | 2 | 1 | 1 | 253.32 | 63.2 |
| [`minidoc.util.containsString`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-containsstring-function-containsstring-values-value-src-minidoc-util-ml-566265228) | `src/minidoc/util.ml:554` | 7 | 6 | 5 | 5 | 2 | 264.4 | 63.93 |
| [`minidoc.util.currentDirectory`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-currentdirectory-function-currentdirectory-src-minidoc-util-ml-113802665) | `src/minidoc/util.ml:125` | 5 | 4 | 3 | 2 | 1 | 146.95 | 69.17 |
| [`minidoc.util.directoryName`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-directoryname-function-directoryname-path-src-minidoc-util-ml-1501831564) | `src/minidoc/util.ml:141` | 8 | 9 | 7 | 6 | 1 | 466.76 | 60.67 |
| [`minidoc.util.ensureDirectory`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-ensuredirectory-function-ensuredirectory-path-src-minidoc-util-ml-1374154082) | `src/minidoc/util.ml:237` | 13 | 14 | 9 | 9 | 2 | 456.47 | 55.87 |
| [`minidoc.util.fileName`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-filename-function-filename-path-src-minidoc-util-ml-1336661524) | `src/minidoc/util.ml:152` | 6 | 5 | 3 | 2 | 1 | 283.63 | 65.45 |
| [`minidoc.util.gitRevision`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-gitrevision-function-gitrevision-root-src-minidoc-util-ml-671168135) | `src/minidoc/util.ml:332` | 26 | 29 | 10 | 23 | 3 | 1147.8 | 46.36 |
| [`minidoc.util.hashText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-hashtext-function-hashtext-value-src-minidoc-util-ml-1635069358) | `src/minidoc/util.ml:401` | 11 | 8 | 4 | 4 | 2 | 366.3 | 58.79 |
| [`minidoc.util.htmlEscape`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-htmlescape-function-htmlescape-value-src-minidoc-util-ml-244495214) | `src/minidoc/util.ml:447` | 9 | 7 | 1 | 0 | 0 | 339.29 | 61.33 |
| [`minidoc.util.isAbsolute`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-isabsolute-function-isabsolute-path-src-minidoc-util-ml-1214071280) | `src/minidoc/util.ml:44` | 6 | 6 | 3 | 2 | 1 | 236.84 | 66 |
| [`minidoc.util.isProjectSource`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-isprojectsource-function-isprojectsource-path-entry-source-roots-src-minidoc-util-ml-1301122291) | `src/minidoc/util.ml:190` | 10 | 10 | 7 | 7 | 2 | 482.81 | 58.45 |
| [`minidoc.util.isSafeUrl`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-issafeurl-function-issafeurl-value-src-minidoc-util-ml-178306030) | `src/minidoc/util.ml:571` | 4 | 2 | 1 | 0 | 0 | 316.36 | 69.23 |
| [`minidoc.util.isWhitespaceChar`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-iswhitespacechar-function-iswhitespacechar-ch-src-minidoc-util-ml-1629633848) | `src/minidoc/util.ml:362` | 3 | 1 | 1 | 0 | 0 | 85.11 | 75.94 |
| [`minidoc.util.joinPath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-joinpath-function-joinpath-left-right-src-minidoc-util-ml-984722546) | `src/minidoc/util.ml:116` | 6 | 7 | 7 | 6 | 1 | 357.36 | 64.21 |
| [`minidoc.util.jsonEscape`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-jsonescape-function-jsonescape-value-src-minidoc-util-ml-1752083326) | `src/minidoc/util.ml:470` | 9 | 7 | 1 | 0 | 0 | 339.29 | 61.33 |
| [`minidoc.util.lineAndColumn`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-lineandcolumn-function-lineandcolumn-source-position-src-minidoc-util-ml-592355921) | `src/minidoc/util.ml:381` | 17 | 13 | 7 | 9 | 3 | 479.22 | 53.45 |
| [`minidoc.util.markdownTableEscape`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-markdowntableescape-function-markdowntableescape-value-src-minidoc-util-ml-1230576038) | `src/minidoc/util.ml:459` | 8 | 6 | 1 | 0 | 0 | 272.32 | 63.12 |
| [`minidoc.util.normalizePath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-normalizepath-function-normalizepath-path-src-minidoc-util-ml-912855504) | `src/minidoc/util.ml:53` | 58 | 50 | 24 | 42 | 5 | 2119.68 | 35.01 |
| [`minidoc.util.onlyWhitespace`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-onlywhitespace-function-onlywhitespace-source-start-pos-end-pos-src-minidoc-util-ml-1891259271) | `src/minidoc/util.ml:368` | 10 | 12 | 7 | 7 | 2 | 420 | 58.88 |
| [`minidoc.util.pathKey`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-pathkey-function-pathkey-path-src-minidoc-util-ml-1467472176) | `src/minidoc/util.ml:170` | 4 | 2 | 1 | 0 | 0 | 74.01 | 73.64 |
| [`minidoc.util.pathsEqual`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-pathsequal-function-pathsequal-left-right-src-minidoc-util-ml-1148717714) | `src/minidoc/util.ml:181` | 3 | 1 | 1 | 0 | 0 | 65.73 | 76.73 |
| [`minidoc.util.readText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-readtext-function-readtext-path-src-minidoc-util-ml-1933403872) | `src/minidoc/util.ml:286` | 6 | 6 | 3 | 2 | 1 | 217.13 | 66.26 |
| [`minidoc.util.relativePath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-relativepath-function-relativepath-base-target-src-minidoc-util-ml-703996981) | `src/minidoc/util.ml:203` | 27 | 26 | 14 | 20 | 3 | 1244.75 | 45.22 |
| [`minidoc.util.removeStaleGenerated`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-removestalegenerated-function-removestalegenerated-root-generated-src-minidoc-util-ml-77044230) | `src/minidoc/util.ml:267` | 16 | 18 | 11 | 13 | 2 | 1029.46 | 51.16 |
| [`minidoc.util.replaceSlashes`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-replaceslashes-function-replaceslashes-value-src-minidoc-util-ml-1042596854) | `src/minidoc/util.ml:37` | 4 | 3 | 2 | 1 | 1 | 127.44 | 71.86 |
| [`minidoc.util.revisionLabel`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-revisionlabel-function-revisionlabel-value-src-minidoc-util-ml-1818928556) | `src/minidoc/util.ml:24` | 10 | 10 | 11 | 11 | 2 | 611.46 | 57.2 |
| [`minidoc.util.slug`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-slug-function-slug-value-src-minidoc-util-ml-137599686) | `src/minidoc/util.ml:415` | 23 | 19 | 8 | 13 | 4 | 886.25 | 48.58 |
| [`minidoc.util.sortedStrings`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-sortedstrings-function-sortedstrings-values-src-minidoc-util-ml-1938694817) | `src/minidoc/util.ml:528` | 20 | 14 | 7 | 8 | 2 | 615.58 | 51.15 |
| [`minidoc.util.sourceUrl`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-sourceurl-function-sourceurl-repository-ref-name-relative-path-line-src-minidoc-util-ml-306910688) | `src/minidoc/util.ml:482` | 14 | 15 | 9 | 8 | 1 | 811.96 | 53.42 |
| [`minidoc.util.stableSlug`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-stableslug-function-stableslug-value-src-minidoc-util-ml-855303090) | `src/minidoc/util.ml:441` | 3 | 1 | 1 | 0 | 0 | 65.73 | 76.73 |
| [`minidoc.util.stem`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-stem-function-stem-path-src-minidoc-util-ml-38274428) | `src/minidoc/util.ml:161` | 6 | 5 | 3 | 2 | 1 | 232.19 | 66.06 |
| [`minidoc.util.writeText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-writetext-function-writetext-path-text-src-minidoc-util-ml-1017090225) | `src/minidoc/util.ml:253` | 9 | 10 | 4 | 3 | 1 | 377.83 | 60.6 |

## Code duplication

A clone group is an exact sequence of 6 normalized, contiguous code lines found more than once. Comments and formatting whitespace are ignored. Duplicated-line totals count overlapping windows only once.

Found 89 clone group(s). At most 89 groups are shown.

<details>
<summary>Clone 1 — 3 occurrences</summary>

    function _fileById ( project , id )
    if len ( project . files ) == 0 then return 0 end if
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] end if
    end for
    return 0

- [`src/minidoc/analyzer.ml:148`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:53`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:54`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 2 — 3 occurrences</summary>

    if len ( project . files ) == 0 then return 0 end if
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] end if
    end for
    return 0
    end function

- [`src/minidoc/analyzer.ml:149`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:54`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:55`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 3 — 3 occurrences</summary>

    function _symbolById ( project , id )
    if len ( project . symbols ) == 0 then return 0 end if
    for i = 0 to len ( project . symbols ) - 1
    if project . symbols [ i ] . id == id then return project . symbols [ i ] end if
    end for
    return 0

- [`src/minidoc/analyzer.ml:158`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:43`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:44`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 4 — 3 occurrences</summary>

    if len ( project . symbols ) == 0 then return 0 end if
    for i = 0 to len ( project . symbols ) - 1
    if project . symbols [ i ] . id == id then return project . symbols [ i ] end if
    end for
    return 0
    end function

- [`src/minidoc/analyzer.ml:159`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:44`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:45`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 5 — 4 occurrences</summary>

    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while
    result [ before + 1 ] = value
    index = index + 1
    end while

- [`src/minidoc/graph.ml:155`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/render_html.ml:181`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:219`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/util.ml:543`](File-src-minidoc-util-ml-1632979029.md)

</details>

<details>
<summary>Clone 6 — 4 occurrences</summary>

    before = before - 1
    end while
    result [ before + 1 ] = value
    index = index + 1
    end while
    return result

- [`src/minidoc/graph.ml:156`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/render_html.ml:182`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:220`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/util.ml:544`](File-src-minidoc-util-ml-1632979029.md)

</details>

<details>
<summary>Clone 7 — 4 occurrences</summary>

    end while
    result [ before + 1 ] = value
    index = index + 1
    end while
    return result
    end function

- [`src/minidoc/graph.ml:157`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/render_html.ml:183`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:221`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/util.ml:545`](File-src-minidoc-util-ml-1632979029.md)

</details>

<details>
<summary>Clone 8 — 2 occurrences</summary>

    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    if project . symbols [ i ] . id == id then return project . symbols [ i ] . qualified_name end if
    end for
    end if
    if len ( project . files ) > 0 then

- [`src/minidoc/graph.ml:30`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:124`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 9 — 2 occurrences</summary>

    for i = 0 to len ( project . symbols ) - 1
    if project . symbols [ i ] . id == id then return project . symbols [ i ] . qualified_name end if
    end for
    end if
    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1

- [`src/minidoc/graph.ml:31`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:125`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 10 — 2 occurrences</summary>

    if project . symbols [ i ] . id == id then return project . symbols [ i ] . qualified_name end if
    end for
    end if
    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] . relative_path end if

- [`src/minidoc/graph.ml:32`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:126`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 11 — 2 occurrences</summary>

    end for
    end if
    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] . relative_path end if
    end for

- [`src/minidoc/graph.ml:33`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:127`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 12 — 2 occurrences</summary>

    end if
    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] . relative_path end if
    end for
    end if

- [`src/minidoc/graph.ml:34`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:128`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 13 — 2 occurrences</summary>

    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] . relative_path end if
    end for
    end if
    return id

- [`src/minidoc/graph.ml:35`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:129`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 14 — 2 occurrences</summary>

    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] . relative_path end if
    end for
    end if
    return id
    end function

- [`src/minidoc/graph.ml:36`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/ordering.ml:130`](File-src-minidoc-ordering-ml-677118389.md)

</details>

<details>
<summary>Clone 15 — 2 occurrences</summary>

    duplicated_lines ,
    duplication_percent ,
    clone_group_count ,
    documented_symbols ,
    documentable_symbols ,
    documentation_coverage ,

- [`src/minidoc/metrics.ml:962`](File-src-minidoc-metrics-ml-1301618694.md)
- [`src/minidoc/model.ml:286`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 16 — 2 occurrences</summary>

    duplication_percent ,
    clone_group_count ,
    documented_symbols ,
    documentable_symbols ,
    documentation_coverage ,
    documentation ,

- [`src/minidoc/metrics.ml:963`](File-src-minidoc-metrics-ml-1301618694.md)
- [`src/minidoc/model.ml:287`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 17 — 2 occurrences</summary>

    function_count ,
    statement_count ,
    cyclomatic_complexity ,
    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,

- [`src/minidoc/model.ml:221`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:279`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 18 — 2 occurrences</summary>

    statement_count ,
    cyclomatic_complexity ,
    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,
    maximum_cognitive_complexity ,

- [`src/minidoc/model.ml:222`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:280`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 19 — 2 occurrences</summary>

    cyclomatic_complexity ,
    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,
    maximum_cognitive_complexity ,
    duplicated_lines ,

- [`src/minidoc/model.ml:223`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:281`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 20 — 2 occurrences</summary>

    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,
    maximum_cognitive_complexity ,
    duplicated_lines ,
    duplication_percent ,

- [`src/minidoc/model.ml:224`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:282`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 21 — 2 occurrences</summary>

    while typeof ( current ) == "struct" and current . container_id != ""
    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent
    end while

- [`src/minidoc/render_html.ml:100`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:101`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 22 — 2 occurrences</summary>

    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent
    end while
    return 0

- [`src/minidoc/render_html.ml:101`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:102`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 23 — 2 occurrences</summary>

    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent
    end while
    return 0
    end function

- [`src/minidoc/render_html.ml:102`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:103`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 24 — 2 occurrences</summary>

    function _symbolLink ( project , doc_symbol )
    if _isType ( doc_symbol ) then return _typePage ( doc_symbol ) end if
    owner = _ownerType ( project , doc_symbol )
    if typeof ( owner ) == "struct" then return _typePage ( owner ) + "#" + doc_symbol . id end if
    file = _fileById ( project , doc_symbol . file_id )
    if typeof ( file ) == "struct" then return _filePage ( file ) + "#" + doc_symbol . id end if

- [`src/minidoc/render_html.ml:111`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:112`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 25 — 2 occurrences</summary>

    function _sortTags ( tags )
    result = tags
    index = 1
    while index < len ( result )
    value = result [ index ]
    before = index - 1

- [`src/minidoc/render_html.ml:173`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:211`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 26 — 2 occurrences</summary>

    result = tags
    index = 1
    while index < len ( result )
    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text

- [`src/minidoc/render_html.ml:174`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:212`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 27 — 2 occurrences</summary>

    index = 1
    while index < len ( result )
    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )

- [`src/minidoc/render_html.ml:175`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:213`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 28 — 2 occurrences</summary>

    while index < len ( result )
    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]

- [`src/minidoc/render_html.ml:176`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:214`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 29 — 2 occurrences</summary>

    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1

- [`src/minidoc/render_html.ml:177`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:215`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 30 — 2 occurrences</summary>

    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while

- [`src/minidoc/render_html.ml:178`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:216`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 31 — 2 occurrences</summary>

    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while
    result [ before + 1 ] = value

- [`src/minidoc/render_html.ml:179`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:217`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 32 — 2 occurrences</summary>

    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while
    result [ before + 1 ] = value
    index = index + 1

- [`src/minidoc/render_html.ml:180`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:218`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 33 — 2 occurrences</summary>

    for i = 0 to len ( doc_symbol . parameters ) - 1
    parameter = doc_symbol . parameters [ i ]
    name = parameter . name
    if parameter . variadic then name = name + "..." end if
    type_name = parameter . type_name
    if type_name == "" then type_name = "dynamic" end if

- [`src/minidoc/render_html.ml:203`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:247`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 34 — 2 occurrences</summary>

    test_role = ""
    test_name = ""
    skip_reason = ""
    timeout = ""
    categories = [ ]
    covers = [ ]

- [`src/minidoc/render_html.ml:221`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:130`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 35 — 2 occurrences</summary>

    test_name = ""
    skip_reason = ""
    timeout = ""
    categories = [ ]
    covers = [ ]
    if len ( doc_symbol . tags ) > 0 then

- [`src/minidoc/render_html.ml:222`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:131`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 36 — 2 occurrences</summary>

    skip_reason = ""
    timeout = ""
    categories = [ ]
    covers = [ ]
    if len ( doc_symbol . tags ) > 0 then
    for i = 0 to len ( doc_symbol . tags ) - 1

- [`src/minidoc/render_html.ml:223`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:132`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 37 — 2 occurrences</summary>

    timeout = ""
    categories = [ ]
    covers = [ ]
    if len ( doc_symbol . tags ) > 0 then
    for i = 0 to len ( doc_symbol . tags ) - 1
    tag = doc_symbol . tags [ i ]

- [`src/minidoc/render_html.ml:224`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:133`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 38 — 2 occurrences</summary>

    else if tag . name == "testmethod" then test_role = "test method" test_name = tag . text
    else if tag . name == "beforeall" or tag . name == "afterall" or tag . name == "beforeeach" or tag . name == "aftereach" then test_role = "fixture " + tag . name
    else if tag . name == "skip" then skip_reason = tag . text
    else if tag . name == "timeout" then timeout = tag . key
    else if tag . name == "category" then categories = categories + [ tag . key ]
    else if tag . name == "covers" then covers = covers + [ tag . key ]

- [`src/minidoc/render_html.ml:235`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:145`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 39 — 2 occurrences</summary>

    else if tag . name == "beforeall" or tag . name == "afterall" or tag . name == "beforeeach" or tag . name == "aftereach" then test_role = "fixture " + tag . name
    else if tag . name == "skip" then skip_reason = tag . text
    else if tag . name == "timeout" then timeout = tag . key
    else if tag . name == "category" then categories = categories + [ tag . key ]
    else if tag . name == "covers" then covers = covers + [ tag . key ]
    end if

- [`src/minidoc/render_html.ml:236`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:146`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 40 — 2 occurrences</summary>

    else if tag . name == "skip" then skip_reason = tag . text
    else if tag . name == "timeout" then timeout = tag . key
    else if tag . name == "category" then categories = categories + [ tag . key ]
    else if tag . name == "covers" then covers = covers + [ tag . key ]
    end if
    end for

- [`src/minidoc/render_html.ml:237`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:147`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 41 — 2 occurrences</summary>

    else if tag . name == "timeout" then timeout = tag . key
    else if tag . name == "category" then categories = categories + [ tag . key ]
    else if tag . name == "covers" then covers = covers + [ tag . key ]
    end if
    end for
    end if

- [`src/minidoc/render_html.ml:238`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:148`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 42 — 2 occurrences</summary>

    function _packages ( project )
    result = [ ]
    if len ( project . files ) == 0 then return result end if
    for i = 0 to len ( project . files ) - 1
    if _fileVisible ( project , project . files [ i ] ) == false then continue end if
    name = project . files [ i ] . package_name

- [`src/minidoc/render_html.ml:304`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:271`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 43 — 2 occurrences</summary>

    result = [ ]
    if len ( project . files ) == 0 then return result end if
    for i = 0 to len ( project . files ) - 1
    if _fileVisible ( project , project . files [ i ] ) == false then continue end if
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if

- [`src/minidoc/render_html.ml:305`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:272`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 44 — 2 occurrences</summary>

    if len ( project . files ) == 0 then return result end if
    for i = 0 to len ( project . files ) - 1
    if _fileVisible ( project , project . files [ i ] ) == false then continue end if
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )

- [`src/minidoc/render_html.ml:306`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:273`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 45 — 2 occurrences</summary>

    for i = 0 to len ( project . files ) - 1
    if _fileVisible ( project , project . files [ i ] ) == false then continue end if
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )
    end for

- [`src/minidoc/render_html.ml:307`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:274`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 46 — 2 occurrences</summary>

    if _fileVisible ( project , project . files [ i ] ) == false then continue end if
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )
    end for
    return util . sortedStrings ( result )

- [`src/minidoc/render_html.ml:308`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:275`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 47 — 2 occurrences</summary>

    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )
    end for
    return util . sortedStrings ( result )
    end function

- [`src/minidoc/render_html.ml:309`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:276`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 48 — 2 occurrences</summary>

    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if _fileVisible ( project , file ) == false then continue end if
    package_name = file . package_name
    if package_name == "" then package_name = "(global)" end if

- [`src/minidoc/render_html.ml:364`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:344`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 49 — 2 occurrences</summary>

    function _symbolHasTag ( doc_symbol , name )
    if len ( doc_symbol . tags ) == 0 then return false end if
    for i = 0 to len ( doc_symbol . tags ) - 1
    if doc_symbol . tags [ i ] . name == name then return true end if
    end for
    return false

- [`src/minidoc/render_html.ml:397`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:376`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 50 — 2 occurrences</summary>

    if len ( doc_symbol . tags ) == 0 then return false end if
    for i = 0 to len ( doc_symbol . tags ) - 1
    if doc_symbol . tags [ i ] . name == name then return true end if
    end for
    return false
    end function

- [`src/minidoc/render_html.ml:398`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:377`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 51 — 2 occurrences</summary>

    function _symbolTagKeys ( doc_symbol , name )
    result = [ ]
    if len ( doc_symbol . tags ) == 0 then return result end if
    for i = 0 to len ( doc_symbol . tags ) - 1
    if doc_symbol . tags [ i ] . name == name and doc_symbol . tags [ i ] . key != "" then result = result + [ doc_symbol . tags [ i ] . key ] end if
    end for

- [`src/minidoc/render_html.ml:407`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:386`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 52 — 2 occurrences</summary>

    result = [ ]
    if len ( doc_symbol . tags ) == 0 then return result end if
    for i = 0 to len ( doc_symbol . tags ) - 1
    if doc_symbol . tags [ i ] . name == name and doc_symbol . tags [ i ] . key != "" then result = result + [ doc_symbol . tags [ i ] . key ] end if
    end for
    return result

- [`src/minidoc/render_html.ml:408`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:387`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 53 — 2 occurrences</summary>

    if len ( doc_symbol . tags ) == 0 then return result end if
    for i = 0 to len ( doc_symbol . tags ) - 1
    if doc_symbol . tags [ i ] . name == name and doc_symbol . tags [ i ] . key != "" then result = result + [ doc_symbol . tags [ i ] . key ] end if
    end for
    return result
    end function

- [`src/minidoc/render_html.ml:409`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:388`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 54 — 2 occurrences</summary>

    function _symbolFixtureRole ( doc_symbol )
    roles = [ "beforeall" , "afterall" , "beforeeach" , "aftereach" ]
    for i = 0 to len ( roles ) - 1
    if _symbolHasTag ( doc_symbol , roles [ i ] ) then return "@" + roles [ i ] end if
    end for
    return ""

- [`src/minidoc/render_html.ml:418`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:397`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 55 — 2 occurrences</summary>

    roles = [ "beforeall" , "afterall" , "beforeeach" , "aftereach" ]
    for i = 0 to len ( roles ) - 1
    if _symbolHasTag ( doc_symbol , roles [ i ] ) then return "@" + roles [ i ] end if
    end for
    return ""
    end function

- [`src/minidoc/render_html.ml:419`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:398`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 56 — 2 occurrences</summary>

    count = 0
    fixture_count = 0
    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    if _visible ( project , project . symbols [ i ] ) then
    if _symbolHasTag ( project . symbols [ i ] , "testmethod" ) then count = count + 1

- [`src/minidoc/render_html.ml:430`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:410`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 57 — 2 occurrences</summary>

    fixture_count = 0
    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    if _visible ( project , project . symbols [ i ] ) then
    if _symbolHasTag ( project . symbols [ i ] , "testmethod" ) then count = count + 1
    else if _symbolFixtureRole ( project . symbols [ i ] ) != "" then fixture_count = fixture_count + 1

- [`src/minidoc/render_html.ml:431`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:411`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 58 — 2 occurrences</summary>

    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    if _visible ( project , project . symbols [ i ] ) then
    if _symbolHasTag ( project . symbols [ i ] , "testmethod" ) then count = count + 1
    else if _symbolFixtureRole ( project . symbols [ i ] ) != "" then fixture_count = fixture_count + 1
    end if

- [`src/minidoc/render_html.ml:432`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:412`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 59 — 2 occurrences</summary>

    for i = 0 to len ( project . symbols ) - 1
    if _visible ( project , project . symbols [ i ] ) then
    if _symbolHasTag ( project . symbols [ i ] , "testmethod" ) then count = count + 1
    else if _symbolFixtureRole ( project . symbols [ i ] ) != "" then fixture_count = fixture_count + 1
    end if
    end if

- [`src/minidoc/render_html.ml:433`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:413`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 60 — 2 occurrences</summary>

    if _visible ( project , project . symbols [ i ] ) then
    if _symbolHasTag ( project . symbols [ i ] , "testmethod" ) then count = count + 1
    else if _symbolFixtureRole ( project . symbols [ i ] ) != "" then fixture_count = fixture_count + 1
    end if
    end if
    end for

- [`src/minidoc/render_html.ml:434`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:414`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 61 — 2 occurrences</summary>

    if _symbolHasTag ( project . symbols [ i ] , "testmethod" ) then count = count + 1
    else if _symbolFixtureRole ( project . symbols [ i ] ) != "" then fixture_count = fixture_count + 1
    end if
    end if
    end for
    end if

- [`src/minidoc/render_html.ml:435`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:415`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 62 — 2 occurrences</summary>

    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    test_symbol = project . symbols [ i ]
    if _visible ( project , test_symbol ) == false or _symbolHasTag ( test_symbol , "testmethod" ) == false then continue end if
    categories = _symbolTagKeys ( test_symbol , "category" )
    covers = _symbolTagKeys ( test_symbol , "covers" )

- [`src/minidoc/render_html.ml:443`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:423`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 63 — 2 occurrences</summary>

    for i = 0 to len ( project . symbols ) - 1
    test_symbol = project . symbols [ i ]
    if _visible ( project , test_symbol ) == false or _symbolHasTag ( test_symbol , "testmethod" ) == false then continue end if
    categories = _symbolTagKeys ( test_symbol , "category" )
    covers = _symbolTagKeys ( test_symbol , "covers" )
    state = "enabled"

- [`src/minidoc/render_html.ml:444`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:424`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 64 — 2 occurrences</summary>

    test_symbol = project . symbols [ i ]
    if _visible ( project , test_symbol ) == false or _symbolHasTag ( test_symbol , "testmethod" ) == false then continue end if
    categories = _symbolTagKeys ( test_symbol , "category" )
    covers = _symbolTagKeys ( test_symbol , "covers" )
    state = "enabled"
    if _symbolHasTag ( test_symbol , "skip" ) then state = "skipped" end if

- [`src/minidoc/render_html.ml:445`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:425`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 65 — 2 occurrences</summary>

    if _visible ( project , test_symbol ) == false or _symbolHasTag ( test_symbol , "testmethod" ) == false then continue end if
    categories = _symbolTagKeys ( test_symbol , "category" )
    covers = _symbolTagKeys ( test_symbol , "covers" )
    state = "enabled"
    if _symbolHasTag ( test_symbol , "skip" ) then state = "skipped" end if
    package_name = test_symbol . package_name

- [`src/minidoc/render_html.ml:446`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:426`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 66 — 2 occurrences</summary>

    categories = _symbolTagKeys ( test_symbol , "category" )
    covers = _symbolTagKeys ( test_symbol , "covers" )
    state = "enabled"
    if _symbolHasTag ( test_symbol , "skip" ) then state = "skipped" end if
    package_name = test_symbol . package_name
    if package_name == "" then package_name = "(global)" end if

- [`src/minidoc/render_html.ml:447`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:427`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 67 — 2 occurrences</summary>

    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    fixture_symbol = project . symbols [ i ]
    fixture_role = _symbolFixtureRole ( fixture_symbol )
    if _visible ( project , fixture_symbol ) == false or fixture_role == "" then continue end if
    fixture_package = fixture_symbol . package_name

- [`src/minidoc/render_html.ml:462`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:442`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 68 — 2 occurrences</summary>

    for i = 0 to len ( project . symbols ) - 1
    fixture_symbol = project . symbols [ i ]
    fixture_role = _symbolFixtureRole ( fixture_symbol )
    if _visible ( project , fixture_symbol ) == false or fixture_role == "" then continue end if
    fixture_package = fixture_symbol . package_name
    if fixture_package == "" then fixture_package = "(global)" end if

- [`src/minidoc/render_html.ml:463`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:443`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 69 — 2 occurrences</summary>

    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if _fileVisible ( project , file ) == false then continue end if
    actual = file . package_name
    if actual == "" then actual = "(global)" end if

- [`src/minidoc/render_html.ml:496`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:476`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 70 — 2 occurrences</summary>

    function _dependencyReferenceCount ( project , dependency_id )
    count = 0
    if len ( project . files ) == 0 then return count end if
    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) == false then continue end if

- [`src/minidoc/render_html.ml:564`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:548`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 71 — 2 occurrences</summary>

    count = 0
    if len ( project . files ) == 0 then return count end if
    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) == false then continue end if
    if len ( file . imports ) == 0 then continue end if

- [`src/minidoc/render_html.ml:565`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:549`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 72 — 2 occurrences</summary>

    if len ( project . files ) == 0 then return count end if
    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) == false then continue end if
    if len ( file . imports ) == 0 then continue end if
    for j = 0 to len ( file . imports ) - 1

- [`src/minidoc/render_html.ml:566`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:550`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 73 — 2 occurrences</summary>

    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) == false then continue end if
    if len ( file . imports ) == 0 then continue end if
    for j = 0 to len ( file . imports ) - 1
    if file . imports [ j ] . target_file_id == dependency_id then count = count + 1 break end if

- [`src/minidoc/render_html.ml:567`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:551`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 74 — 2 occurrences</summary>

    file = project . files [ i ]
    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) == false then continue end if
    if len ( file . imports ) == 0 then continue end if
    for j = 0 to len ( file . imports ) - 1
    if file . imports [ j ] . target_file_id == dependency_id then count = count + 1 break end if
    end for

- [`src/minidoc/render_html.ml:568`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:552`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 75 — 2 occurrences</summary>

    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) == false then continue end if
    if len ( file . imports ) == 0 then continue end if
    for j = 0 to len ( file . imports ) - 1
    if file . imports [ j ] . target_file_id == dependency_id then count = count + 1 break end if
    end for
    end for

- [`src/minidoc/render_html.ml:569`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:553`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 76 — 2 occurrences</summary>

    if len ( file . imports ) == 0 then continue end if
    for j = 0 to len ( file . imports ) - 1
    if file . imports [ j ] . target_file_id == dependency_id then count = count + 1 break end if
    end for
    end for
    return count

- [`src/minidoc/render_html.ml:570`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:554`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 77 — 2 occurrences</summary>

    for j = 0 to len ( file . imports ) - 1
    if file . imports [ j ] . target_file_id == dependency_id then count = count + 1 break end if
    end for
    end for
    return count
    end function

- [`src/minidoc/render_html.ml:571`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:555`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 78 — 2 occurrences</summary>

    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    file = project . files [ i ]
    if util . isProjectSource ( file . path , project . config . entry , project . config . source_roots ) then continue end if
    package_name = file . package_name
    if package_name == "" then package_name = "(global)" end if

- [`src/minidoc/render_html.ml:583`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:569`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 79 — 2 occurrences</summary>

    function _hasDependencies ( project )
    if len ( project . files ) == 0 then return false end if
    for i = 0 to len ( project . files ) - 1
    if util . isProjectSource ( project . files [ i ] . path , project . config . entry , project . config . source_roots ) == false then return true end if
    end for
    return false

- [`src/minidoc/render_html.ml:63`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:64`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 80 — 2 occurrences</summary>

    if len ( project . files ) == 0 then return false end if
    for i = 0 to len ( project . files ) - 1
    if util . isProjectSource ( project . files [ i ] . path , project . config . entry , project . config . source_roots ) == false then return true end if
    end for
    return false
    end function

- [`src/minidoc/render_html.ml:64`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:65`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 81 — 2 occurrences</summary>

    if typeof ( generated ) == "error" then return generated end if
    end for
    end if
    if len ( project . files ) > 0 then
    for i = 0 to len ( project . files ) - 1
    if _fileVisible ( project , project . files [ i ] ) == false then continue end if

- [`src/minidoc/render_html.ml:796`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:806`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 82 — 2 occurrences</summary>

    if typeof ( generated ) == "error" then return generated end if
    end for
    end if
    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    listed_sym = project . symbols [ i ]

- [`src/minidoc/render_html.ml:804`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:814`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 83 — 2 occurrences</summary>

    end for
    end if
    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    listed_sym = project . symbols [ i ]
    if _isType ( listed_sym ) and _visible ( project , listed_sym ) then

- [`src/minidoc/render_html.ml:805`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:815`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 84 — 2 occurrences</summary>

    cleaned = util . removeStaleGenerated ( root , generated )
    if typeof ( cleaned ) == "error" then return cleaned end if
    manifest_written = util . writeText ( util . joinPath ( root , ".minidoc-output" ) , strings . join ( util . sortedStrings ( generated ) , "\n" ) + "\n" )
    if typeof ( manifest_written ) == "error" then return manifest_written end if
    return true
    end function

- [`src/minidoc/render_html.ml:841`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:850`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 85 — 2 occurrences</summary>

    function _ownerType ( project , doc_symbol )
    current = doc_symbol
    while typeof ( current ) == "struct" and current . container_id != ""
    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if

- [`src/minidoc/render_html.ml:98`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:99`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 86 — 2 occurrences</summary>

    current = doc_symbol
    while typeof ( current ) == "struct" and current . container_id != ""
    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent

- [`src/minidoc/render_html.ml:99`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:100`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 87 — 2 occurrences</summary>

    packages = _packages ( project )
    if len ( packages ) > 0 then
    for i = 0 to len ( packages ) - 1
    writer . appendString ( "- [" + packages [ i ] + "](" + _packagePage ( packages [ i ] ) + ")\n" )
    end for
    end if

- [`src/minidoc/render_markdown.ml:329`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/render_markdown.ml:461`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 88 — 2 occurrences</summary>

    if len ( packages ) > 0 then
    for i = 0 to len ( packages ) - 1
    writer . appendString ( "- [" + packages [ i ] + "](" + _packagePage ( packages [ i ] ) + ")\n" )
    end for
    end if
    return writer . toString ( )

- [`src/minidoc/render_markdown.ml:330`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/render_markdown.ml:462`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 89 — 2 occurrences</summary>

    for i = 0 to len ( packages ) - 1
    writer . appendString ( "- [" + packages [ i ] + "](" + _packagePage ( packages [ i ] ) + ")\n" )
    end for
    end if
    return writer . toString ( )
    end function

- [`src/minidoc/render_markdown.ml:331`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/render_markdown.ml:463`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>


## Definitions

- **Cognitive complexity:** decision complexity weighted by nesting; logical `and`/`or` operators add one.
- **Cyclomatic complexity:** one plus decisions from conditions, loops, switch cases, and logical `and`/`or` operators.
- **Documentation coverage:** percentage of documented API summaries, parameter contracts, fields, constants, globals, and enum variants. Empty categories report 100% and do not affect the overall ratio.
- **Halstead metrics:** operators and operands are counted from MiniLang lexical tokens. Estimated defects are volume divided by 3,000.
- **Maintainability index:** normalized 0–100 index based on Halstead volume, cyclomatic complexity, and source lines. Project MI is source-line weighted across files.
- **SLOC:** non-empty lines containing MiniLang tokens after conditional preprocessing; comment-only lines are excluded.
