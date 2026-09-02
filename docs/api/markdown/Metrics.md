# Metrics

[Home](README.md)

Static metrics are calculated from target-specific preprocessed MiniLang files inside the configured source roots. External imported modules, generated documentation, and excluded paths are not measured.

## Project summary

| Metric | Value |
| --- | ---: |
| Blank lines | 347 |
| Clone groups | 44 |
| Cognitive complexity | 2167 (maximum per function: 84) |
| Comment lines | 684 |
| Cyclomatic complexity | 1538 (average: 6.66, maximum: 42) |
| Documentation coverage | 100% (44 of 44 symbols) |
| Duplicated lines | 236 (5.45%) |
| Files | 13 |
| Functions | 231 |
| Maintainability index | 3.93 / 100 |
| Physical lines | 5365 |
| Source lines | 4334 |
| Statements | 3409 |

## Halstead metrics

| Distinct operators | Distinct operands | Total operators | Total operands | Vocabulary | Length | Volume | Difficulty | Effort | Estimated defects |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 40 | 1695 | 21159 | 15863 | 1735 | 37022 | 398383.37 | 187.17 | 74567025.44 | 132.79 |

## Files

| File | SLOC | Functions | Cyclomatic total / avg / max | Cognitive total / max | Duplication | Halstead volume | MI |
| --- | ---: | ---: | --- | --- | --- | ---: | ---: |
| [`src/main.ml`](File-src-main-ml-186468670.md) | 4 | 1 | 1 / 1 / 1 | 0 / 0 | 0 (0%) | 74.01 | 73.64 |
| [`src/minidoc/analyzer.ml`](File-src-minidoc-analyzer-ml-492085543.md) | 611 | 29 | 274 / 9.45 / 28 | 409 / 59 | 14 (2.29%) | 56778.84 | 0 |
| [`src/minidoc/app.ml`](File-src-minidoc-app-ml-1489174864.md) | 123 | 8 | 36 / 4.5 / 13 | 32 / 12 | 0 (0%) | 5485.45 | 23.39 |
| [`src/minidoc/config.ml`](File-src-minidoc-config-ml-2001755147.md) | 354 | 18 | 184 / 10.22 / 42 | 297 / 84 | 0 (0%) | 26546.5 | 0 |
| [`src/minidoc/doc_comments.ml`](File-src-minidoc-doc-comments-ml-1995285450.md) | 262 | 11 | 85 / 7.73 / 22 | 115 / 39 | 0 (0%) | 14814.2 | 6.61 |
| [`src/minidoc/graph.ml`](File-src-minidoc-graph-ml-29661697.md) | 167 | 6 | 40 / 6.67 / 19 | 58 / 34 | 20 (11.98%) | 9499.13 | 18.28 |
| [`src/minidoc/loader.ml`](File-src-minidoc-loader-ml-952553188.md) | 257 | 14 | 104 / 7.43 / 19 | 151 / 32 | 0 (0%) | 18893.45 | 3.5 |
| [`src/minidoc/metrics.ml`](File-src-minidoc-metrics-ml-1301618694.md) | 704 | 34 | 221 / 6.5 / 22 | 319 / 42 | 6 (0.85%) | 43755.4 | 0 |
| [`src/minidoc/model.ml`](File-src-minidoc-model-ml-438170230.md) | 266 | 6 | 6 / 1 / 1 | 0 / 0 | 22 (8.27%) | 5436.2 | 20.14 |
| [`src/minidoc/ordering.ml`](File-src-minidoc-ordering-ml-677118389.md) | 159 | 12 | 50 / 4.17 / 12 | 61 / 27 | 12 (7.55%) | 8708.94 | 17.67 |
| [`src/minidoc/render_html.ml`](File-src-minidoc-render-html-ml-1870373141.md) | 534 | 31 | 195 / 6.29 / 33 | 287 / 50 | 69 (12.92%) | 51666.95 | 0 |
| [`src/minidoc/render_markdown.ml`](File-src-minidoc-render-markdown-ml-212465045.md) | 548 | 29 | 185 / 6.38 / 32 | 269 / 50 | 85 (15.51%) | 45912.74 | 0 |
| [`src/minidoc/util.ml`](File-src-minidoc-util-ml-1632979029.md) | 345 | 32 | 157 / 4.91 / 24 | 169 / 42 | 8 (2.32%) | 20618.73 | 0 |

## Functions

| Function | Location | LOC | Statements | Cyclomatic | Cognitive | Max nesting | Halstead volume | MI |
| --- | --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| [`main`](File-src-main-ml-186468670.md#function-function-main-function-main-args-src-main-ml-776500952) | `src/main.ml:18` | 3 | 1 | 1 | 0 | 0 | 46.51 | 77.78 |
| [`minidoc.analyzer._addEnum`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addenum-function-addenum-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-1898800049) | `src/minidoc/analyzer.ml:532` | 24 | 21 | 5 | 7 | 3 | 1762.44 | 46.49 |
| [`minidoc.analyzer._addExternFunction`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addexternfunction-function-addexternfunction-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-1344035985) | `src/minidoc/analyzer.ml:444` | 1 | 21 | 7 | 9 | 3 | 43.19 | 87.61 |
| [`minidoc.analyzer._addFunction`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addfunction-function-addfunction-project-file-node-kind-prefix-namespace-name-container-id-src-minidoc-analyzer-ml-1636501440) | `src/minidoc/analyzer.ml:391` | 20 | 22 | 7 | 6 | 1 | 1482.43 | 48.47 |
| [`minidoc.analyzer._addInterface`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addinterface-function-addinterface-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-466710023) | `src/minidoc/analyzer.ml:518` | 11 | 7 | 3 | 3 | 2 | 763.37 | 56.69 |
| [`minidoc.analyzer._addStruct`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addstruct-function-addstruct-project-file-node-prefix-namespace-name-src-minidoc-analyzer-ml-2123710885) | `src/minidoc/analyzer.ml:469` | 44 | 43 | 20 | 34 | 4 | 3644.35 | 36.52 |
| [`minidoc.analyzer._addSymbol`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-addsymbol-function-addsymbol-project-file-kind-name-qualified-name-container-id-namespace-name-position-signature-type-name-modifiers-parameters-return-type-doc-src-minidoc-analyzer-ml-624033249) | `src/minidoc/analyzer.ml:156` | 42 | 13 | 4 | 6 | 3 | 1552.92 | 41.71 |
| [`minidoc.analyzer._aliasTargetPackage`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-aliastargetpackage-function-aliastargetpackage-project-file-id-alias-src-minidoc-analyzer-ml-1437372212) | `src/minidoc/analyzer.ml:619` | 13 | 12 | 7 | 9 | 3 | 563.52 | 55.5 |
| [`minidoc.analyzer._calleeName`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-calleename-function-calleename-expr-src-minidoc-analyzer-ml-1597510084) | `src/minidoc/analyzer.ml:277` | 10 | 9 | 5 | 5 | 2 | 324.33 | 59.93 |
| [`minidoc.analyzer._diagnostic`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-diagnostic-function-diagnostic-project-severity-code-file-position-message-src-minidoc-analyzer-ml-1923704018) | `src/minidoc/analyzer.ml:122` | 4 | 2 | 1 | 0 | 0 | 299.56 | 69.39 |
| [`minidoc.analyzer._fileById`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-filebyid-function-filebyid-project-id-src-minidoc-analyzer-ml-1558966907) | `src/minidoc/analyzer.ml:129` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.analyzer._findWord`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-findword-function-findword-source-name-start-pos-src-minidoc-analyzer-ml-1352989268) | `src/minidoc/analyzer.ml:97` | 22 | 20 | 9 | 12 | 2 | 1225.24 | 47.88 |
| [`minidoc.analyzer._functionParameters`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-functionparameters-function-functionparameters-node-doc-src-minidoc-analyzer-ml-706939433) | `src/minidoc/analyzer.ml:224` | 20 | 21 | 13 | 18 | 3 | 1404.19 | 47.83 |
| [`minidoc.analyzer._functionSignature`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-functionsignature-function-functionsignature-node-parameters-name-kind-src-minidoc-analyzer-ml-620797374) | `src/minidoc/analyzer.ml:247` | 1 | 30 | 14 | 20 | 3 | 34.87 | 87.32 |
| [`minidoc.analyzer._qualified`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-qualified-function-qualified-prefix-name-src-minidoc-analyzer-ml-1309113056) | `src/minidoc/analyzer.ml:23` | 5 | 5 | 3 | 2 | 1 | 128.93 | 69.57 |
| [`minidoc.analyzer._resolveCalls`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-resolvecalls-function-resolvecalls-project-src-minidoc-analyzer-ml-2135136698) | `src/minidoc/analyzer.ml:635` | 33 | 32 | 15 | 25 | 3 | 2503.48 | 41.06 |
| [`minidoc.analyzer._resolveTypeRelations`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-resolvetyperelations-function-resolvetyperelations-project-src-minidoc-analyzer-ml-1763154930) | `src/minidoc/analyzer.ml:671` | 14 | 16 | 10 | 13 | 2 | 1032.38 | 52.55 |
| [`minidoc.analyzer._resolveUnique`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-resolveunique-function-resolveunique-project-candidates-allowed-kinds-src-minidoc-analyzer-ml-1675174222) | `src/minidoc/analyzer.ml:598` | 18 | 16 | 8 | 12 | 3 | 675.88 | 51.73 |
| [`minidoc.analyzer._scope`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-scope-function-scope-package-name-namespace-name-src-minidoc-analyzer-ml-1593120142) | `src/minidoc/analyzer.ml:31` | 3 | 1 | 1 | 0 | 0 | 53.15 | 77.38 |
| [`minidoc.analyzer._symbolById`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-symbolbyid-function-symbolbyid-project-id-src-minidoc-analyzer-ml-201427511) | `src/minidoc/analyzer.ml:139` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.analyzer._symbolId`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-symbolid-function-symbolid-kind-qualified-name-signature-file-path-src-minidoc-analyzer-ml-736578529) | `src/minidoc/analyzer.ml:149` | 4 | 2 | 1 | 0 | 0 | 165.67 | 71.19 |
| [`minidoc.analyzer._typeName`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-typename-function-typename-value-optional-src-minidoc-analyzer-ml-231327762) | `src/minidoc/analyzer.ml:37` | 6 | 6 | 4 | 3 | 1 | 180.09 | 66.69 |
| [`minidoc.analyzer._validateCoverage`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatecoverage-function-validatecoverage-project-src-minidoc-analyzer-ml-1362902924) | `src/minidoc/analyzer.ml:688` | 12 | 10 | 8 | 10 | 3 | 866.98 | 54.81 |
| [`minidoc.analyzer._validateFunctionDoc`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-validatefunctiondoc-function-validatefunctiondoc-project-file-node-doc-parameters-return-type-src-minidoc-analyzer-ml-579938707) | `src/minidoc/analyzer.ml:201` | 1 | 18 | 11 | 25 | 5 | 51.89 | 86.51 |
| [`minidoc.analyzer._walkDeclarations`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walkdeclarations-function-walkdeclarations-project-file-body-namespace-name-src-minidoc-analyzer-ml-1227878639) | `src/minidoc/analyzer.ml:559` | 36 | 32 | 17 | 30 | 4 | 3026.77 | 39.39 |
| [`minidoc.analyzer._walkExpression`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walkexpression-function-walkexpression-project-file-caller-expr-namespace-name-src-minidoc-analyzer-ml-2008412265) | `src/minidoc/analyzer.ml:290` | 35 | 25 | 19 | 25 | 3 | 2617.2 | 39.83 |
| [`minidoc.analyzer._walkNested`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walknested-function-walknested-project-file-body-parent-namespace-name-src-minidoc-analyzer-ml-888770987) | `src/minidoc/analyzer.ml:414` | 27 | 17 | 16 | 29 | 4 | 1586.55 | 44.21 |
| [`minidoc.analyzer._walkStatementsForCalls`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-walkstatementsforcalls-function-walkstatementsforcalls-project-file-caller-body-namespace-name-src-minidoc-analyzer-ml-1230640592) | `src/minidoc/analyzer.ml:328` | 60 | 44 | 28 | 59 | 6 | 4092.39 | 32.15 |
| [`minidoc.analyzer.analyze`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-analyze-function-analyze-project-src-minidoc-analyzer-ml-448369014) | `src/minidoc/analyzer.ml:704` | 12 | 8 | 3 | 3 | 2 | 333.67 | 58.39 |
| [`minidoc.analyzer.expressionText`](File-src-minidoc-analyzer-ml-492085543.md#function-function-minidoc-analyzer-expressiontext-function-expressiontext-expr-src-minidoc-analyzer-ml-2077794936) | `src/minidoc/analyzer.ml:47` | 47 | 51 | 27 | 36 | 4 | 3406.9 | 35.16 |
| [`minidoc.app._countSeverity`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-countseverity-function-countseverity-project-severity-src-minidoc-app-ml-309679191) | `src/minidoc/app.ml:92` | 8 | 7 | 4 | 4 | 2 | 291.43 | 62.51 |
| [`minidoc.app._hasArg`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-hasarg-function-hasarg-args-value-src-minidoc-app-ml-81945717) | `src/minidoc/app.ml:72` | 7 | 6 | 5 | 5 | 2 | 264.4 | 63.93 |
| [`minidoc.app._printDiagnostics`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-printdiagnostics-function-printdiagnostics-project-src-minidoc-app-ml-250768944) | `src/minidoc/app.ml:82` | 7 | 5 | 3 | 2 | 1 | 391.73 | 63.01 |
| [`minidoc.app.generate`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-generate-function-generate-cfg-src-minidoc-app-ml-1058954463) | `src/minidoc/app.ml:104` | 13 | 13 | 3 | 2 | 1 | 524.01 | 56.26 |
| [`minidoc.app.printHelp`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-printhelp-function-printhelp-src-minidoc-app-ml-210253363) | `src/minidoc/app.ml:37` | 32 | 30 | 1 | 0 | 0 | 361.89 | 49.12 |
| [`minidoc.app.printVersion`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-printversion-function-printversion-src-minidoc-app-ml-1716674331) | `src/minidoc/app.ml:31` | 3 | 1 | 1 | 0 | 0 | 31.7 | 78.95 |
| [`minidoc.app.render`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-render-function-render-project-src-minidoc-app-ml-643749544) | `src/minidoc/app.ml:121` | 12 | 11 | 6 | 7 | 2 | 471.12 | 56.93 |
| [`minidoc.app.run`](File-src-minidoc-app-ml-1489174864.md#function-function-minidoc-app-run-function-run-args-src-minidoc-app-ml-382026988) | `src/minidoc/app.ml:137` | 30 | 30 | 13 | 12 | 1 | 1335.36 | 44.14 |
| [`minidoc.config._absoluteItems`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-absoluteitems-function-absoluteitems-items-base-src-minidoc-config-ml-2103852774) | `src/minidoc/config.ml:174` | 8 | 6 | 3 | 2 | 1 | 271.03 | 62.86 |
| [`minidoc.config._applyCli`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applycli-function-applycli-cfg-args-src-minidoc-config-ml-1158403242) | `src/minidoc/config.ml:340` | 61 | 53 | 42 | 78 | 3 | 3670.57 | 30.45 |
| [`minidoc.config._applyFormats`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applyformats-function-applyformats-cfg-raw-src-minidoc-config-ml-1993873735) | `src/minidoc/config.ml:305` | 14 | 15 | 6 | 7 | 2 | 678.28 | 54.37 |
| [`minidoc.config._applyGraphSelection`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applygraphselection-function-applygraphselection-cfg-raw-src-minidoc-config-ml-1585515829) | `src/minidoc/config.ml:322` | 15 | 12 | 5 | 7 | 2 | 587.76 | 54.28 |
| [`minidoc.config._applyMiniDoc`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applyminidoc-function-applyminidoc-cfg-path-src-minidoc-config-ml-2010845010) | `src/minidoc/config.ml:234` | 57 | 47 | 33 | 84 | 3 | 4439.93 | 31.72 |
| [`minidoc.config._applyProject`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-applyproject-function-applyproject-cfg-path-src-minidoc-config-ml-943352422) | `src/minidoc/config.ml:200` | 30 | 21 | 18 | 34 | 4 | 1612.65 | 42.9 |
| [`minidoc.config._argValue`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-argvalue-function-argvalue-args-names-src-minidoc-config-ml-1852564532) | `src/minidoc/config.ml:295` | 7 | 6 | 4 | 4 | 2 | 278.83 | 63.9 |
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
| [`minidoc.config.load`](File-src-minidoc-config-ml-2001755147.md#function-function-minidoc-config-load-function-load-args-src-minidoc-config-ml-465999990) | `src/minidoc/config.ml:406` | 23 | 34 | 18 | 17 | 1 | 1854.76 | 44.99 |
| [`minidoc.doc_comments._cleanBlockLine`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-cleanblockline-function-cleanblockline-value-src-minidoc-doc-comments-ml-57678238) | `src/minidoc/doc_comments.ml:30` | 9 | 6 | 3 | 2 | 1 | 309.07 | 61.35 |
| [`minidoc.doc_comments._finishPending`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-finishpending-function-finishpending-docs-pending-kind-pending-start-pending-end-pending-start-line-pending-end-line-pending-lines-src-minidoc-doc-comments-ml-97374425) | `src/minidoc/doc_comments.ml:126` | 4 | 3 | 2 | 1 | 1 | 209.59 | 70.34 |
| [`minidoc.doc_comments._firstWord`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-firstword-function-firstword-value-src-minidoc-doc-comments-ml-523093244) | `src/minidoc/doc_comments.ml:42` | 12 | 11 | 5 | 4 | 1 | 549.84 | 56.6 |
| [`minidoc.doc_comments._parseBlock`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-parseblock-function-parseblock-target-kind-start-pos-end-pos-start-line-end-line-raw-lines-src-minidoc-doc-comments-ml-46187865) | `src/minidoc/doc_comments.ml:81` | 40 | 33 | 13 | 25 | 4 | 2122.45 | 40.01 |
| [`minidoc.doc_comments._stripOneSpace`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-striponespace-function-striponespace-value-src-minidoc-doc-comments-ml-2032218004) | `src/minidoc/doc_comments.ml:21` | 6 | 3 | 3 | 2 | 1 | 189.99 | 66.67 |
| [`minidoc.doc_comments._summaryAndDetails`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-summaryanddetails-function-summaryanddetails-body-src-minidoc-doc-comments-ml-726081093) | `src/minidoc/doc_comments.ml:57` | 21 | 16 | 6 | 9 | 3 | 753.4 | 50.21 |
| [`minidoc.doc_comments.documentationBefore`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-documentationbefore-function-documentationbefore-docs-source-position-src-minidoc-doc-comments-ml-2090428024) | `src/minidoc/doc_comments.ml:288` | 16 | 15 | 10 | 11 | 2 | 752.38 | 52.25 |
| [`minidoc.doc_comments.fileDocumentation`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-filedocumentation-function-filedocumentation-docs-src-minidoc-doc-comments-ml-859326424) | `src/minidoc/doc_comments.ml:256` | 26 | 25 | 7 | 8 | 2 | 1150.98 | 46.76 |
| [`minidoc.doc_comments.hasTag`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-hastag-function-hastag-doc-name-src-minidoc-doc-comments-ml-702183168) | `src/minidoc/doc_comments.ml:324` | 8 | 7 | 6 | 6 | 2 | 403.55 | 61.25 |
| [`minidoc.doc_comments.scan`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-scan-function-scan-source-src-minidoc-doc-comments-ml-935505990) | `src/minidoc/doc_comments.ml:137` | 107 | 87 | 22 | 39 | 3 | 4621.17 | 27.11 |
| [`minidoc.doc_comments.tagText`](File-src-minidoc-doc-comments-ml-1995285450.md#function-function-minidoc-doc-comments-tagtext-function-tagtext-doc-name-key-src-minidoc-doc-comments-ml-458302547) | `src/minidoc/doc_comments.ml:310` | 9 | 8 | 8 | 8 | 2 | 511.82 | 59.14 |
| [`minidoc.graph._addNode`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-addnode-function-addnode-nodes-id-label-kind-maximum-src-minidoc-graph-ml-1721902335) | `src/minidoc/graph.ml:55` | 5 | 5 | 4 | 3 | 1 | 269.34 | 67.2 |
| [`minidoc.graph._nodeIndex`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-nodeindex-function-nodeindex-nodes-id-src-minidoc-graph-ml-1580849361) | `src/minidoc/graph.ml:45` | 7 | 6 | 4 | 4 | 2 | 235.23 | 64.42 |
| [`minidoc.graph._shortLabel`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-shortlabel-function-shortlabel-value-src-minidoc-graph-ml-523704082) | `src/minidoc/graph.ml:63` | 4 | 3 | 2 | 1 | 1 | 159.91 | 71.17 |
| [`minidoc.graph._sortNodes`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-sortnodes-function-sortnodes-nodes-src-minidoc-graph-ml-1625324464) | `src/minidoc/graph.ml:70` | 16 | 12 | 4 | 4 | 2 | 515.24 | 54.21 |
| [`minidoc.graph._symbolLabel`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-symbollabel-function-symbollabel-project-id-src-minidoc-graph-ml-931677709) | `src/minidoc/graph.ml:29` | 13 | 9 | 7 | 12 | 3 | 533.62 | 55.66 |
| [`minidoc.graph.renderSvg`](File-src-minidoc-graph-ml-29661697.md#function-function-minidoc-graph-rendersvg-function-rendersvg-project-relation-kind-title-src-minidoc-graph-ml-1835978035) | `src/minidoc/graph.ml:92` | 113 | 112 | 19 | 34 | 3 | 6370.42 | 26.02 |
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
| [`minidoc.metrics._appendFunctionAndNested`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-appendfunctionandnested-function-appendfunctionandnested-project-file-normalized-lines-node-output-src-minidoc-metrics-ml-283899290) | `src/minidoc/metrics.ml:537` | 4 | 2 | 1 | 0 | 0 | 179.85 | 70.94 |
| [`minidoc.metrics._appendFunctionMetric`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-appendfunctionmetric-function-appendfunctionmetric-project-file-normalized-lines-node-output-src-minidoc-metrics-ml-854357784) | `src/minidoc/metrics.ml:471` | 31 | 15 | 6 | 8 | 3 | 1295.01 | 44.87 |
| [`minidoc.metrics._booleanOperators`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-booleanoperators-function-booleanoperators-expr-src-minidoc-metrics-ml-643365584) | `src/minidoc/metrics.ml:280` | 34 | 32 | 19 | 25 | 3 | 1726.54 | 41.37 |
| [`minidoc.metrics._calculateDuplicates`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-calculateduplicates-function-calculateduplicates-sources-src-minidoc-metrics-ml-1078932023) | `src/minidoc/metrics.ml:598` | 55 | 43 | 9 | 24 | 6 | 2663.86 | 36.84 |
| [`minidoc.metrics._collectFunctions`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-collectfunctions-function-collectfunctions-project-file-normalized-lines-body-output-src-minidoc-metrics-ml-796792166) | `src/minidoc/metrics.ml:544` | 17 | 12 | 10 | 17 | 4 | 879.05 | 51.2 |
| [`minidoc.metrics._commentFlags`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-commentflags-function-commentflags-source-src-minidoc-metrics-ml-366355676) | `src/minidoc/metrics.ml:190` | 55 | 53 | 22 | 36 | 3 | 1826.52 | 36.24 |
| [`minidoc.metrics._complexity`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-complexity-function-complexity-body-src-minidoc-metrics-ml-1173839345) | `src/minidoc/metrics.ml:378` | 4 | 2 | 1 | 0 | 0 | 106.61 | 72.53 |
| [`minidoc.metrics._duplicatedLineCount`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-duplicatedlinecount-function-duplicatedlinecount-source-data-src-minidoc-metrics-ml-1920902583) | `src/minidoc/metrics.ml:656` | 9 | 7 | 3 | 3 | 2 | 217.13 | 62.42 |
| [`minidoc.metrics._findFunctionSymbol`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-findfunctionsymbol-function-findfunctionsymbol-project-file-id-position-src-minidoc-metrics-ml-877065609) | `src/minidoc/metrics.ml:385` | 9 | 8 | 6 | 6 | 2 | 470.46 | 59.66 |
| [`minidoc.metrics._finishHalstead`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-finishhalstead-function-finishhalstead-accumulator-src-minidoc-metrics-ml-1252759367) | `src/minidoc/metrics.ml:134` | 24 | 11 | 4 | 3 | 1 | 729.46 | 49.31 |
| [`minidoc.metrics._functionEndLine`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-functionendline-function-functionendline-normalized-lines-start-line-src-minidoc-metrics-ml-1697392997) | `src/minidoc/metrics.ml:405` | 15 | 13 | 7 | 10 | 3 | 528.32 | 54.34 |
| [`minidoc.metrics._functionTotals`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-functiontotals-function-functiontotals-function-metrics-file-id-src-minidoc-metrics-ml-667394573) | `src/minidoc/metrics.ml:668` | 21 | 20 | 6 | 12 | 3 | 692.77 | 50.46 |
| [`minidoc.metrics._halstead`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-halstead-function-halstead-source-src-minidoc-metrics-ml-1602355904) | `src/minidoc/metrics.ml:161` | 3 | 1 | 1 | 0 | 0 | 65.73 | 76.73 |
| [`minidoc.metrics._isDocumentable`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-isdocumentable-function-isdocumentable-doc-symbol-src-minidoc-metrics-ml-143533948) | `src/minidoc/metrics.ml:692` | 5 | 4 | 2 | 1 | 1 | 197.42 | 68.41 |
| [`minidoc.metrics._isMeasuredFile`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-ismeasuredfile-function-ismeasuredfile-project-file-src-minidoc-metrics-ml-1753902428) | `src/minidoc/metrics.ml:700` | 3 | 1 | 1 | 0 | 0 | 120 | 74.9 |
| [`minidoc.metrics._maintainability`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-maintainability-function-maintainability-volume-cyclomatic-source-lines-src-minidoc-metrics-ml-27050618) | `src/minidoc/metrics.ml:459` | 9 | 11 | 5 | 4 | 1 | 459.04 | 59.87 |
| [`minidoc.metrics._markWindow`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-markwindow-function-markwindow-source-data-start-count-src-minidoc-metrics-ml-1506590456) | `src/minidoc/metrics.ml:574` | 7 | 4 | 3 | 2 | 1 | 205.13 | 64.97 |
| [`minidoc.metrics._newHalsteadAccumulator`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-newhalsteadaccumulator-function-newhalsteadaccumulator-src-minidoc-metrics-ml-495882533) | `src/minidoc/metrics.ml:83` | 3 | 1 | 1 | 0 | 0 | 118.03 | 74.95 |
| [`minidoc.metrics._normalizedLines`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-normalizedlines-function-normalizedlines-source-src-minidoc-metrics-ml-623941354) | `src/minidoc/metrics.ml:167` | 20 | 18 | 8 | 9 | 2 | 1105.89 | 49.23 |
| [`minidoc.metrics._recordOperand`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-recordoperand-function-recordoperand-accumulator-value-src-minidoc-metrics-ml-2035509488) | `src/minidoc/metrics.ml:100` | 8 | 5 | 2 | 1 | 1 | 279.68 | 62.9 |
| [`minidoc.metrics._recordOperator`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-recordoperator-function-recordoperator-accumulator-value-src-minidoc-metrics-ml-1977189644) | `src/minidoc/metrics.ml:89` | 8 | 5 | 2 | 1 | 1 | 279.68 | 62.9 |
| [`minidoc.metrics._round2`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-round2-function-round2-value-src-minidoc-metrics-ml-954408678) | `src/minidoc/metrics.ml:68` | 3 | 1 | 1 | 0 | 0 | 66.61 | 76.69 |
| [`minidoc.metrics._sourceData`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourcedata-function-sourcedata-file-src-minidoc-metrics-ml-963878849) | `src/minidoc/metrics.ml:248` | 29 | 16 | 7 | 13 | 3 | 905.86 | 46.45 |
| [`minidoc.metrics._sourceDataById`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourcedatabyid-function-sourcedatabyid-sources-file-id-src-minidoc-metrics-ml-1425402771) | `src/minidoc/metrics.ml:564` | 7 | 6 | 4 | 4 | 2 | 239.75 | 64.36 |
| [`minidoc.metrics._sourceLines`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourcelines-function-sourcelines-source-src-minidoc-metrics-ml-1184977954) | `src/minidoc/metrics.ml:423` | 14 | 10 | 7 | 9 | 3 | 598.26 | 54.61 |
| [`minidoc.metrics._sourceSlice`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-sourceslice-function-sourceslice-source-start-line-end-line-src-minidoc-metrics-ml-2074663469) | `src/minidoc/metrics.ml:440` | 16 | 17 | 6 | 5 | 1 | 691.85 | 53.04 |
| [`minidoc.metrics._startsFunction`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-startsfunction-function-startsfunction-line-src-minidoc-metrics-ml-1539691709) | `src/minidoc/metrics.ml:397` | 1 | 4 | 4 | 3 | 1 | 11.61 | 92.01 |
| [`minidoc.metrics._tokenValue`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-tokenvalue-function-tokenvalue-tokens-index-src-minidoc-metrics-ml-437919237) | `src/minidoc/metrics.ml:74` | 6 | 5 | 2 | 1 | 1 | 284.6 | 65.57 |
| [`minidoc.metrics._touchNesting`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-touchnesting-function-touchnesting-accumulator-nesting-src-minidoc-metrics-ml-1877717551) | `src/minidoc/metrics.ml:317` | 4 | 3 | 2 | 1 | 1 | 97.67 | 72.67 |
| [`minidoc.metrics._walkComplexity`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-walkcomplexity-function-walkcomplexity-body-accumulator-nesting-src-minidoc-metrics-ml-286232695) | `src/minidoc/metrics.ml:324` | 51 | 41 | 16 | 31 | 4 | 2786.56 | 36.48 |
| [`minidoc.metrics._walkNestedFunctions`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-walknestedfunctions-function-walknestedfunctions-project-file-normalized-lines-body-output-src-minidoc-metrics-ml-853314118) | `src/minidoc/metrics.ml:505` | 29 | 19 | 16 | 29 | 4 | 1681.63 | 43.36 |
| [`minidoc.metrics._windowFingerprint`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-windowfingerprint-function-windowfingerprint-lines-start-count-src-minidoc-metrics-ml-470461909) | `src/minidoc/metrics.ml:584` | 11 | 9 | 3 | 3 | 2 | 346.79 | 59.09 |
| [`minidoc.metrics.calculate`](File-src-minidoc-metrics-ml-1301618694.md#function-function-minidoc-metrics-calculate-function-calculate-project-src-minidoc-metrics-ml-1071316968) | `src/minidoc/metrics.ml:707` | 129 | 84 | 22 | 42 | 4 | 5533.59 | 24.79 |
| [`minidoc.model.defaultConfig`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-defaultconfig-function-defaultconfig-src-minidoc-model-ml-878829745) | `src/minidoc/model.ml:273` | 29 | 1 | 1 | 0 | 0 | 343.65 | 50.21 |
| [`minidoc.model.emptyDocBlock`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptydocblock-function-emptydocblock-src-minidoc-model-ml-1867502199) | `src/minidoc/model.ml:305` | 3 | 1 | 1 | 0 | 0 | 121.84 | 74.85 |
| [`minidoc.model.emptyHalsteadMetrics`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptyhalsteadmetrics-function-emptyhalsteadmetrics-src-minidoc-model-ml-480079767) | `src/minidoc/model.ml:331` | 3 | 1 | 1 | 0 | 0 | 96.34 | 75.57 |
| [`minidoc.model.emptyProject`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptyproject-function-emptyproject-config-root-dir-src-minidoc-model-ml-510474277) | `src/minidoc/model.ml:325` | 3 | 1 | 1 | 0 | 0 | 160.18 | 74.02 |
| [`minidoc.model.emptyProjectMetrics`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-emptyprojectmetrics-function-emptyprojectmetrics-src-minidoc-model-ml-496127141) | `src/minidoc/model.ml:337` | 3 | 1 | 1 | 0 | 0 | 236.06 | 72.84 |
| [`minidoc.model.newDiagnostic`](File-src-minidoc-model-ml-438170230.md#function-function-minidoc-model-newdiagnostic-function-newdiagnostic-severity-code-file-path-line-column-message-src-minidoc-model-ml-1480640064) | `src/minidoc/model.ml:317` | 3 | 1 | 1 | 0 | 0 | 121.84 | 74.85 |
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
| [`minidoc.render_html._css`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-css-function-css-src-minidoc-render-html-ml-1625528009) | `src/minidoc/render_html.ml:555` | 3 | 1 | 1 | 0 | 0 | 22.46 | 80 |
| [`minidoc.render_html._diagnostics`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-diagnostics-function-diagnostics-project-src-minidoc-render-html-ml-1860874224) | `src/minidoc/render_html.ml:439` | 12 | 11 | 3 | 2 | 1 | 786.06 | 55.78 |
| [`minidoc.render_html._file`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-file-function-file-project-file-src-minidoc-render-html-ml-490889384) | `src/minidoc/render_html.ml:380` | 37 | 38 | 16 | 30 | 4 | 2844.69 | 39.45 |
| [`minidoc.render_html._fileById`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-filebyid-function-filebyid-project-id-src-minidoc-render-html-ml-435004607) | `src/minidoc/render_html.ml:44` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_html._filePage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-filepage-function-filepage-file-src-minidoc-render-html-ml-419870347) | `src/minidoc/render_html.ml:54` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_html._files`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-files-function-files-project-src-minidoc-render-html-ml-1929023196) | `src/minidoc/render_html.ml:304` | 16 | 14 | 5 | 9 | 3 | 812.72 | 52.69 |
| [`minidoc.render_html._graphPage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-graphpage-function-graphpage-title-filename-description-src-minidoc-render-html-ml-1488656330) | `src/minidoc/render_html.ml:530` | 3 | 1 | 1 | 0 | 0 | 186.91 | 73.55 |
| [`minidoc.render_html._home`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-home-function-home-project-src-minidoc-render-html-ml-2034429428) | `src/minidoc/render_html.ml:272` | 29 | 30 | 8 | 10 | 3 | 1930.93 | 44.02 |
| [`minidoc.render_html._isType`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-istype-function-istype-doc-symbol-src-minidoc-render-html-ml-1873039548) | `src/minidoc/render_html.ml:28` | 3 | 1 | 1 | 0 | 0 | 121.11 | 74.87 |
| [`minidoc.render_html._javascript`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-javascript-function-javascript-src-minidoc-render-html-ml-771571021) | `src/minidoc/render_html.ml:561` | 3 | 1 | 1 | 0 | 0 | 22.46 | 80 |
| [`minidoc.render_html._layout`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-layout-function-layout-project-title-content-src-minidoc-render-html-ml-793745437) | `src/minidoc/render_html.ml:240` | 9 | 7 | 1 | 0 | 0 | 645.5 | 59.37 |
| [`minidoc.render_html._markdownHtml`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-markdownhtml-function-markdownhtml-text-src-minidoc-render-html-ml-1903815168) | `src/minidoc/render_html.ml:96` | 38 | 44 | 17 | 30 | 3 | 2586.64 | 39.36 |
| [`minidoc.render_html._metrics`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-metrics-function-metrics-project-src-minidoc-render-html-ml-1447599980) | `src/minidoc/render_html.ml:454` | 67 | 61 | 14 | 31 | 5 | 6546.51 | 31.56 |
| [`minidoc.render_html._ownerType`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-ownertype-function-ownertype-project-doc-symbol-src-minidoc-render-html-ml-1808108667) | `src/minidoc/render_html.ml:72` | 10 | 9 | 5 | 6 | 2 | 299.56 | 60.17 |
| [`minidoc.render_html._package`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-package-function-package-project-package-name-src-minidoc-render-html-ml-821137262) | `src/minidoc/render_html.ml:354` | 23 | 21 | 11 | 20 | 3 | 1382.42 | 46.82 |
| [`minidoc.render_html._packagePage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-packagepage-function-packagepage-name-src-minidoc-render-html-ml-1754427610) | `src/minidoc/render_html.ml:66` | 3 | 1 | 1 | 0 | 0 | 66.61 | 76.69 |
| [`minidoc.render_html._packages`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-packages-function-packages-project-src-minidoc-render-html-ml-152823440) | `src/minidoc/render_html.ml:252` | 10 | 9 | 4 | 4 | 2 | 381.47 | 59.57 |
| [`minidoc.render_html._packagesIndex`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-packagesindex-function-packagesindex-project-src-minidoc-render-html-ml-1876075040) | `src/minidoc/render_html.ml:339` | 12 | 8 | 3 | 3 | 2 | 486.26 | 57.24 |
| [`minidoc.render_html._projectDescription`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-projectdescription-function-projectdescription-project-src-minidoc-render-html-ml-104319708) | `src/minidoc/render_html.ml:265` | 4 | 3 | 2 | 1 | 1 | 130.8 | 71.78 |
| [`minidoc.render_html._searchIndex`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-searchindex-function-searchindex-project-src-minidoc-render-html-ml-1008698196) | `src/minidoc/render_html.ml:536` | 16 | 14 | 5 | 9 | 3 | 955.31 | 52.19 |
| [`minidoc.render_html._sortTags`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-sorttags-function-sorttags-tags-src-minidoc-render-html-ml-98000292) | `src/minidoc/render_html.ml:147` | 16 | 12 | 4 | 4 | 2 | 515.24 | 54.21 |
| [`minidoc.render_html._symbolById`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbolbyid-function-symbolbyid-project-id-src-minidoc-render-html-ml-761027075) | `src/minidoc/render_html.ml:34` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_html._symbolHtml`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbolhtml-function-symbolhtml-project-doc-symbol-heading-src-minidoc-render-html-ml-426613973) | `src/minidoc/render_html.ml:166` | 71 | 68 | 28 | 48 | 3 | 5524.31 | 29.65 |
| [`minidoc.render_html._symbolLink`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbollink-function-symbollink-project-doc-symbol-src-minidoc-render-html-ml-747058409) | `src/minidoc/render_html.ml:85` | 8 | 9 | 4 | 3 | 1 | 423.05 | 61.37 |
| [`minidoc.render_html._symbols`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-symbols-function-symbols-project-src-minidoc-render-html-ml-1501047772) | `src/minidoc/render_html.ml:323` | 13 | 10 | 4 | 6 | 3 | 707.45 | 55.21 |
| [`minidoc.render_html._tagValue`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-tagvalue-function-tagvalue-doc-symbol-name-src-minidoc-render-html-ml-2064001193) | `src/minidoc/render_html.ml:137` | 7 | 6 | 4 | 4 | 2 | 296.13 | 63.72 |
| [`minidoc.render_html._type`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-type-function-type-project-type-symbol-src-minidoc-render-html-ml-1278264173) | `src/minidoc/render_html.ml:420` | 16 | 15 | 6 | 8 | 3 | 1019.29 | 51.86 |
| [`minidoc.render_html._typePage`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-typepage-function-typepage-doc-symbol-src-minidoc-render-html-ml-496705942) | `src/minidoc/render_html.ml:60` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_html._visible`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-visible-function-visible-project-doc-symbol-src-minidoc-render-html-ml-419580155) | `src/minidoc/render_html.ml:22` | 3 | 1 | 1 | 0 | 0 | 84 | 75.98 |
| [`minidoc.render_html._writeGenerated`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-writegenerated-function-writegenerated-root-generated-relative-path-content-src-minidoc-render-html-ml-979553409) | `src/minidoc/render_html.ml:567` | 5 | 4 | 2 | 1 | 1 | 222.91 | 68.04 |
| [`minidoc.render_html.render`](File-src-minidoc-render-html-ml-1870373141.md#function-function-minidoc-render-html-render-function-render-project-src-minidoc-render-html-ml-961220700) | `src/minidoc/render_html.ml:576` | 72 | 81 | 33 | 50 | 4 | 6126.71 | 28.53 |
| [`minidoc.render_markdown._appendSymbol`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-appendsymbol-function-appendsymbol-writer-project-doc-symbol-heading-level-src-minidoc-render-markdown-ml-173001445) | `src/minidoc/render_markdown.ml:184` | 38 | 39 | 10 | 16 | 3 | 2211.77 | 40.77 |
| [`minidoc.render_markdown._appendTagSections`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-appendtagsections-function-appendtagsections-writer-doc-symbol-src-minidoc-render-markdown-ml-1272647537) | `src/minidoc/render_markdown.ml:97` | 65 | 54 | 21 | 39 | 3 | 2662.9 | 33.64 |
| [`minidoc.render_markdown._fileById`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-filebyid-function-filebyid-project-id-src-minidoc-render-markdown-ml-579038907) | `src/minidoc/render_markdown.ml:45` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_markdown._filePage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-filepage-function-filepage-file-src-minidoc-render-markdown-ml-589252103) | `src/minidoc/render_markdown.ml:55` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_markdown._homeName`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-homename-function-homename-project-src-minidoc-render-markdown-ml-1694838250) | `src/minidoc/render_markdown.ml:534` | 4 | 3 | 2 | 1 | 1 | 88 | 72.98 |
| [`minidoc.render_markdown._indentedCode`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-indentedcode-function-indentedcode-text-src-minidoc-render-markdown-ml-511409356) | `src/minidoc/render_markdown.ml:442` | 10 | 6 | 3 | 3 | 2 | 318.95 | 60.25 |
| [`minidoc.render_markdown._isType`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-istype-function-istype-doc-symbol-src-minidoc-render-markdown-ml-1542253352) | `src/minidoc/render_markdown.ml:29` | 3 | 1 | 1 | 0 | 0 | 121.11 | 74.87 |
| [`minidoc.render_markdown._ownerType`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-ownertype-function-ownertype-project-doc-symbol-src-minidoc-render-markdown-ml-2082832311) | `src/minidoc/render_markdown.ml:73` | 10 | 9 | 5 | 6 | 2 | 299.56 | 60.17 |
| [`minidoc.render_markdown._packagePage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-packagepage-function-packagepage-name-src-minidoc-render-markdown-ml-282590802) | `src/minidoc/render_markdown.ml:67` | 3 | 1 | 1 | 0 | 0 | 66.61 | 76.69 |
| [`minidoc.render_markdown._packages`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-packages-function-packages-project-src-minidoc-render-markdown-ml-204965004) | `src/minidoc/render_markdown.ml:225` | 10 | 9 | 4 | 4 | 2 | 381.47 | 59.57 |
| [`minidoc.render_markdown._projectDescription`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-projectdescription-function-projectdescription-project-src-minidoc-render-markdown-ml-1404482280) | `src/minidoc/render_markdown.ml:238` | 4 | 3 | 2 | 1 | 1 | 130.8 | 71.78 |
| [`minidoc.render_markdown._renderDiagnostics`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderdiagnostics-function-renderdiagnostics-project-src-minidoc-render-markdown-ml-478275432) | `src/minidoc/render_markdown.ml:428` | 11 | 10 | 3 | 2 | 1 | 795.78 | 56.57 |
| [`minidoc.render_markdown._renderFile`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderfile-function-renderfile-project-file-src-minidoc-render-markdown-ml-1369235800) | `src/minidoc/render_markdown.ml:364` | 40 | 39 | 16 | 30 | 4 | 2642.16 | 38.94 |
| [`minidoc.render_markdown._renderFiles`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderfiles-function-renderfiles-project-src-minidoc-render-markdown-ml-234256500) | `src/minidoc/render_markdown.ml:287` | 16 | 14 | 5 | 9 | 3 | 864.92 | 52.5 |
| [`minidoc.render_markdown._renderGraphPage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendergraphpage-function-rendergraphpage-project-title-image-name-description-src-minidoc-render-markdown-ml-1268984211) | `src/minidoc/render_markdown.ml:561` | 6 | 4 | 1 | 0 | 0 | 298.06 | 65.57 |
| [`minidoc.render_markdown._renderHome`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderhome-function-renderhome-project-src-minidoc-render-markdown-ml-1392245616) | `src/minidoc/render_markdown.ml:245` | 39 | 38 | 10 | 13 | 3 | 2448.41 | 40.22 |
| [`minidoc.render_markdown._renderMetrics`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendermetrics-function-rendermetrics-project-src-minidoc-render-markdown-ml-1897863144) | `src/minidoc/render_markdown.ml:455` | 1 | 66 | 14 | 31 | 5 | 11.61 | 90.66 |
| [`minidoc.render_markdown._renderPackage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderpackage-function-renderpackage-project-package-name-src-minidoc-render-markdown-ml-1076586018) | `src/minidoc/render_markdown.ml:336` | 25 | 21 | 11 | 20 | 3 | 1346.28 | 46.12 |
| [`minidoc.render_markdown._renderPackagesIndex`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-renderpackagesindex-function-renderpackagesindex-project-src-minidoc-render-markdown-ml-593340696) | `src/minidoc/render_markdown.ml:322` | 11 | 7 | 3 | 3 | 2 | 461.82 | 58.22 |
| [`minidoc.render_markdown._renderSidebar`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendersidebar-function-rendersidebar-project-src-minidoc-render-markdown-ml-197078972) | `src/minidoc/render_markdown.ml:541` | 17 | 17 | 7 | 7 | 2 | 924.61 | 51.45 |
| [`minidoc.render_markdown._renderSymbols`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendersymbols-function-rendersymbols-project-src-minidoc-render-markdown-ml-878417144) | `src/minidoc/render_markdown.ml:306` | 13 | 10 | 4 | 6 | 3 | 754.43 | 55.01 |
| [`minidoc.render_markdown._renderType`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-rendertype-function-rendertype-project-type-symbol-src-minidoc-render-markdown-ml-1036185877) | `src/minidoc/render_markdown.ml:407` | 18 | 13 | 7 | 10 | 3 | 1026.71 | 50.59 |
| [`minidoc.render_markdown._sortTags`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-sorttags-function-sorttags-tags-src-minidoc-render-markdown-ml-1028920960) | `src/minidoc/render_markdown.ml:165` | 16 | 12 | 4 | 4 | 2 | 515.24 | 54.21 |
| [`minidoc.render_markdown._symbolById`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symbolbyid-function-symbolbyid-project-id-src-minidoc-render-markdown-ml-606316783) | `src/minidoc/render_markdown.ml:35` | 7 | 6 | 4 | 4 | 2 | 279.68 | 63.9 |
| [`minidoc.render_markdown._symbolLink`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-symbollink-function-symbollink-project-doc-symbol-src-minidoc-render-markdown-ml-1288607865) | `src/minidoc/render_markdown.ml:86` | 8 | 9 | 4 | 3 | 1 | 423.05 | 61.37 |
| [`minidoc.render_markdown._typePage`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-typepage-function-typepage-doc-symbol-src-minidoc-render-markdown-ml-1928748606) | `src/minidoc/render_markdown.ml:61` | 3 | 1 | 1 | 0 | 0 | 76.15 | 76.28 |
| [`minidoc.render_markdown._visible`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-visible-function-visible-project-doc-symbol-src-minidoc-render-markdown-ml-1836227959) | `src/minidoc/render_markdown.ml:23` | 3 | 1 | 1 | 0 | 0 | 84 | 75.98 |
| [`minidoc.render_markdown._writeGenerated`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-writegenerated-function-writegenerated-root-generated-relative-path-content-src-minidoc-render-markdown-ml-1480454785) | `src/minidoc/render_markdown.ml:570` | 9 | 8 | 4 | 3 | 1 | 491.14 | 59.8 |
| [`minidoc.render_markdown.render`](File-src-minidoc-render-markdown-ml-212465045.md#function-function-minidoc-render-markdown-render-function-render-project-src-minidoc-render-markdown-ml-12269608) | `src/minidoc/render_markdown.ml:583` | 71 | 77 | 32 | 50 | 4 | 5135.23 | 29.33 |
| [`minidoc.util._stringLess`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-stringless-function-stringless-left-right-src-minidoc-util-ml-1708326844) | `src/minidoc/util.ml:397` | 13 | 13 | 5 | 6 | 2 | 466.31 | 56.34 |
| [`minidoc.util.absolutePath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-absolutepath-function-absolutepath-path-base-src-minidoc-util-ml-514406695) | `src/minidoc/util.ml:119` | 5 | 5 | 4 | 3 | 1 | 214.05 | 67.9 |
| [`minidoc.util.addUnique`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-addunique-function-addunique-values-value-src-minidoc-util-ml-1616123664) | `src/minidoc/util.ml:462` | 4 | 3 | 2 | 1 | 1 | 105.49 | 72.43 |
| [`minidoc.util.alphabeticalLess`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-alphabeticalless-function-alphabeticalless-left-right-src-minidoc-util-ml-727255026) | `src/minidoc/util.ml:415` | 8 | 7 | 2 | 1 | 1 | 253.32 | 63.2 |
| [`minidoc.util.containsString`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-containsstring-function-containsstring-values-value-src-minidoc-util-ml-566265228) | `src/minidoc/util.ml:452` | 7 | 6 | 5 | 5 | 2 | 264.4 | 63.93 |
| [`minidoc.util.currentDirectory`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-currentdirectory-function-currentdirectory-src-minidoc-util-ml-113802665) | `src/minidoc/util.ml:111` | 5 | 4 | 3 | 2 | 1 | 146.95 | 69.17 |
| [`minidoc.util.directoryName`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-directoryname-function-directoryname-path-src-minidoc-util-ml-1501831564) | `src/minidoc/util.ml:127` | 8 | 9 | 7 | 6 | 1 | 466.76 | 60.67 |
| [`minidoc.util.ensureDirectory`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-ensuredirectory-function-ensuredirectory-path-src-minidoc-util-ml-1374154082) | `src/minidoc/util.ml:223` | 13 | 14 | 9 | 9 | 2 | 456.47 | 55.87 |
| [`minidoc.util.fileName`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-filename-function-filename-path-src-minidoc-util-ml-1336661524) | `src/minidoc/util.ml:138` | 6 | 5 | 3 | 2 | 1 | 283.63 | 65.45 |
| [`minidoc.util.hashText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-hashtext-function-hashtext-value-src-minidoc-util-ml-1635069358) | `src/minidoc/util.ml:299` | 11 | 8 | 4 | 4 | 2 | 366.3 | 58.79 |
| [`minidoc.util.htmlEscape`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-htmlescape-function-htmlescape-value-src-minidoc-util-ml-244495214) | `src/minidoc/util.ml:345` | 9 | 7 | 1 | 0 | 0 | 339.29 | 61.33 |
| [`minidoc.util.isAbsolute`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-isabsolute-function-isabsolute-path-src-minidoc-util-ml-1214071280) | `src/minidoc/util.ml:30` | 6 | 6 | 3 | 2 | 1 | 236.84 | 66 |
| [`minidoc.util.isProjectSource`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-isprojectsource-function-isprojectsource-path-entry-source-roots-src-minidoc-util-ml-1301122291) | `src/minidoc/util.ml:176` | 10 | 10 | 7 | 7 | 2 | 482.81 | 58.45 |
| [`minidoc.util.isSafeUrl`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-issafeurl-function-issafeurl-value-src-minidoc-util-ml-178306030) | `src/minidoc/util.ml:469` | 4 | 2 | 1 | 0 | 0 | 316.36 | 69.23 |
| [`minidoc.util.isWhitespaceChar`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-iswhitespacechar-function-iswhitespacechar-ch-src-minidoc-util-ml-1629633848) | `src/minidoc/util.ml:260` | 3 | 1 | 1 | 0 | 0 | 85.11 | 75.94 |
| [`minidoc.util.joinPath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-joinpath-function-joinpath-left-right-src-minidoc-util-ml-984722546) | `src/minidoc/util.ml:102` | 6 | 7 | 7 | 6 | 1 | 357.36 | 64.21 |
| [`minidoc.util.jsonEscape`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-jsonescape-function-jsonescape-value-src-minidoc-util-ml-1752083326) | `src/minidoc/util.ml:368` | 9 | 7 | 1 | 0 | 0 | 339.29 | 61.33 |
| [`minidoc.util.lineAndColumn`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-lineandcolumn-function-lineandcolumn-source-position-src-minidoc-util-ml-592355921) | `src/minidoc/util.ml:279` | 17 | 13 | 7 | 9 | 3 | 479.22 | 53.45 |
| [`minidoc.util.markdownTableEscape`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-markdowntableescape-function-markdowntableescape-value-src-minidoc-util-ml-1230576038) | `src/minidoc/util.ml:357` | 8 | 6 | 1 | 0 | 0 | 272.32 | 63.12 |
| [`minidoc.util.normalizePath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-normalizepath-function-normalizepath-path-src-minidoc-util-ml-912855504) | `src/minidoc/util.ml:39` | 58 | 50 | 24 | 42 | 5 | 2119.68 | 35.01 |
| [`minidoc.util.onlyWhitespace`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-onlywhitespace-function-onlywhitespace-source-start-pos-end-pos-src-minidoc-util-ml-1891259271) | `src/minidoc/util.ml:266` | 10 | 12 | 7 | 7 | 2 | 420 | 58.88 |
| [`minidoc.util.pathKey`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-pathkey-function-pathkey-path-src-minidoc-util-ml-1467472176) | `src/minidoc/util.ml:156` | 4 | 2 | 1 | 0 | 0 | 74.01 | 73.64 |
| [`minidoc.util.pathsEqual`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-pathsequal-function-pathsequal-left-right-src-minidoc-util-ml-1148717714) | `src/minidoc/util.ml:167` | 3 | 1 | 1 | 0 | 0 | 65.73 | 76.73 |
| [`minidoc.util.readText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-readtext-function-readtext-path-src-minidoc-util-ml-1933403872) | `src/minidoc/util.ml:251` | 6 | 6 | 3 | 2 | 1 | 217.13 | 66.26 |
| [`minidoc.util.relativePath`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-relativepath-function-relativepath-base-target-src-minidoc-util-ml-703996981) | `src/minidoc/util.ml:189` | 27 | 26 | 14 | 20 | 3 | 1244.75 | 45.22 |
| [`minidoc.util.replaceSlashes`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-replaceslashes-function-replaceslashes-value-src-minidoc-util-ml-1042596854) | `src/minidoc/util.ml:23` | 4 | 3 | 2 | 1 | 1 | 127.44 | 71.86 |
| [`minidoc.util.slug`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-slug-function-slug-value-src-minidoc-util-ml-137599686) | `src/minidoc/util.ml:313` | 23 | 19 | 8 | 13 | 4 | 886.25 | 48.58 |
| [`minidoc.util.sortedStrings`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-sortedstrings-function-sortedstrings-values-src-minidoc-util-ml-1938694817) | `src/minidoc/util.ml:426` | 20 | 14 | 7 | 8 | 2 | 615.58 | 51.15 |
| [`minidoc.util.sourceUrl`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-sourceurl-function-sourceurl-repository-ref-name-relative-path-line-src-minidoc-util-ml-306910688) | `src/minidoc/util.ml:380` | 14 | 15 | 9 | 8 | 1 | 811.96 | 53.42 |
| [`minidoc.util.stableSlug`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-stableslug-function-stableslug-value-src-minidoc-util-ml-855303090) | `src/minidoc/util.ml:339` | 3 | 1 | 1 | 0 | 0 | 65.73 | 76.73 |
| [`minidoc.util.stem`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-stem-function-stem-path-src-minidoc-util-ml-38274428) | `src/minidoc/util.ml:147` | 6 | 5 | 3 | 2 | 1 | 232.19 | 66.06 |
| [`minidoc.util.writeText`](File-src-minidoc-util-ml-1632979029.md#function-function-minidoc-util-writetext-function-writetext-path-text-src-minidoc-util-ml-1017090225) | `src/minidoc/util.ml:239` | 9 | 10 | 4 | 3 | 1 | 377.83 | 60.6 |

## Code duplication

A clone group is an exact sequence of 6 normalized, contiguous code lines found more than once. Comments and formatting whitespace are ignored. Duplicated-line totals count overlapping windows only once.

Found 44 clone group(s). At most 44 groups are shown.

<details>
<summary>Clone 1 — 3 occurrences</summary>

    function _fileById ( project , id )
    if len ( project . files ) == 0 then return 0 end if
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] end if
    end for
    return 0

- [`src/minidoc/analyzer.ml:129`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:44`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:45`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 2 — 3 occurrences</summary>

    if len ( project . files ) == 0 then return 0 end if
    for i = 0 to len ( project . files ) - 1
    if project . files [ i ] . id == id then return project . files [ i ] end if
    end for
    return 0
    end function

- [`src/minidoc/analyzer.ml:130`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:45`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:46`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 3 — 3 occurrences</summary>

    function _symbolById ( project , id )
    if len ( project . symbols ) == 0 then return 0 end if
    for i = 0 to len ( project . symbols ) - 1
    if project . symbols [ i ] . id == id then return project . symbols [ i ] end if
    end for
    return 0

- [`src/minidoc/analyzer.ml:139`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:34`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:35`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 4 — 3 occurrences</summary>

    if len ( project . symbols ) == 0 then return 0 end if
    for i = 0 to len ( project . symbols ) - 1
    if project . symbols [ i ] . id == id then return project . symbols [ i ] end if
    end for
    return 0
    end function

- [`src/minidoc/analyzer.ml:140`](File-src-minidoc-analyzer-ml-492085543.md)
- [`src/minidoc/render_html.ml:35`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:36`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 5 — 2 occurrences</summary>

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
<summary>Clone 6 — 2 occurrences</summary>

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
<summary>Clone 7 — 2 occurrences</summary>

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
<summary>Clone 8 — 2 occurrences</summary>

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
<summary>Clone 9 — 2 occurrences</summary>

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
<summary>Clone 10 — 2 occurrences</summary>

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
<summary>Clone 11 — 2 occurrences</summary>

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
<summary>Clone 12 — 4 occurrences</summary>

    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while
    result [ before + 1 ] = value
    index = index + 1
    end while

- [`src/minidoc/graph.ml:78`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/render_html.ml:155`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:173`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/util.ml:441`](File-src-minidoc-util-ml-1632979029.md)

</details>

<details>
<summary>Clone 13 — 4 occurrences</summary>

    before = before - 1
    end while
    result [ before + 1 ] = value
    index = index + 1
    end while
    return result

- [`src/minidoc/graph.ml:79`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/render_html.ml:156`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:174`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/util.ml:442`](File-src-minidoc-util-ml-1632979029.md)

</details>

<details>
<summary>Clone 14 — 4 occurrences</summary>

    end while
    result [ before + 1 ] = value
    index = index + 1
    end while
    return result
    end function

- [`src/minidoc/graph.ml:80`](File-src-minidoc-graph-ml-29661697.md)
- [`src/minidoc/render_html.ml:157`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:175`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/util.ml:443`](File-src-minidoc-util-ml-1632979029.md)

</details>

<details>
<summary>Clone 15 — 2 occurrences</summary>

    duplicated_lines ,
    duplication_percent ,
    clone_group_count ,
    documented_symbols ,
    documentable_symbols ,
    documentation_coverage ,

- [`src/minidoc/metrics.ml:828`](File-src-minidoc-metrics-ml-1301618694.md)
- [`src/minidoc/model.ml:242`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 16 — 2 occurrences</summary>

    function_count ,
    statement_count ,
    cyclomatic_complexity ,
    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,

- [`src/minidoc/model.ml:200`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:235`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 17 — 2 occurrences</summary>

    statement_count ,
    cyclomatic_complexity ,
    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,
    maximum_cognitive_complexity ,

- [`src/minidoc/model.ml:201`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:236`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 18 — 2 occurrences</summary>

    cyclomatic_complexity ,
    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,
    maximum_cognitive_complexity ,
    duplicated_lines ,

- [`src/minidoc/model.ml:202`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:237`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 19 — 2 occurrences</summary>

    average_cyclomatic_complexity ,
    maximum_cyclomatic_complexity ,
    cognitive_complexity ,
    maximum_cognitive_complexity ,
    duplicated_lines ,
    duplication_percent ,

- [`src/minidoc/model.ml:203`](File-src-minidoc-model-ml-438170230.md)
- [`src/minidoc/model.ml:238`](File-src-minidoc-model-ml-438170230.md)

</details>

<details>
<summary>Clone 20 — 2 occurrences</summary>

    function _sortTags ( tags )
    result = tags
    index = 1
    while index < len ( result )
    value = result [ index ]
    before = index - 1

- [`src/minidoc/render_html.ml:147`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:165`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 21 — 2 occurrences</summary>

    result = tags
    index = 1
    while index < len ( result )
    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text

- [`src/minidoc/render_html.ml:148`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:166`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 22 — 2 occurrences</summary>

    index = 1
    while index < len ( result )
    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )

- [`src/minidoc/render_html.ml:149`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:167`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 23 — 2 occurrences</summary>

    while index < len ( result )
    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]

- [`src/minidoc/render_html.ml:150`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:168`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 24 — 2 occurrences</summary>

    value = result [ index ]
    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1

- [`src/minidoc/render_html.ml:151`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:169`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 25 — 2 occurrences</summary>

    before = index - 1
    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while

- [`src/minidoc/render_html.ml:152`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:170`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 26 — 2 occurrences</summary>

    value_key = value . key + "\n" + value . text
    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while
    result [ before + 1 ] = value

- [`src/minidoc/render_html.ml:153`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:171`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 27 — 2 occurrences</summary>

    while before >= 0 and util . alphabeticalLess ( value_key , result [ before ] . key + "\n" + result [ before ] . text )
    result [ before + 1 ] = result [ before ]
    before = before - 1
    end while
    result [ before + 1 ] = value
    index = index + 1

- [`src/minidoc/render_html.ml:154`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:172`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 28 — 2 occurrences</summary>

    for i = 0 to len ( doc_symbol . parameters ) - 1
    parameter = doc_symbol . parameters [ i ]
    name = parameter . name
    if parameter . variadic then name = name + "..." end if
    type_name = parameter . type_name
    if type_name == "" then type_name = "dynamic" end if

- [`src/minidoc/render_html.ml:177`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:201`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 29 — 2 occurrences</summary>

    function _packages ( project )
    result = [ ]
    if len ( project . files ) == 0 then return result end if
    for i = 0 to len ( project . files ) - 1
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if

- [`src/minidoc/render_html.ml:252`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:225`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 30 — 2 occurrences</summary>

    result = [ ]
    if len ( project . files ) == 0 then return result end if
    for i = 0 to len ( project . files ) - 1
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )

- [`src/minidoc/render_html.ml:253`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:226`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 31 — 2 occurrences</summary>

    if len ( project . files ) == 0 then return result end if
    for i = 0 to len ( project . files ) - 1
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )
    end for

- [`src/minidoc/render_html.ml:254`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:227`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 32 — 2 occurrences</summary>

    for i = 0 to len ( project . files ) - 1
    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )
    end for
    return util . sortedStrings ( result )

- [`src/minidoc/render_html.ml:255`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:228`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 33 — 2 occurrences</summary>

    name = project . files [ i ] . package_name
    if name == "" then name = "(global)" end if
    result = util . addUnique ( result , name )
    end for
    return util . sortedStrings ( result )
    end function

- [`src/minidoc/render_html.ml:256`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:229`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 34 — 2 occurrences</summary>

    if typeof ( generated ) == "error" then return generated end if
    end for
    end if
    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    listed_sym = project . symbols [ i ]

- [`src/minidoc/render_html.ml:607`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:617`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 35 — 2 occurrences</summary>

    end for
    end if
    if len ( project . symbols ) > 0 then
    for i = 0 to len ( project . symbols ) - 1
    listed_sym = project . symbols [ i ]
    if _isType ( listed_sym ) and _visible ( project , listed_sym ) then

- [`src/minidoc/render_html.ml:608`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:618`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 36 — 2 occurrences</summary>

    function _ownerType ( project , doc_symbol )
    current = doc_symbol
    while typeof ( current ) == "struct" and current . container_id != ""
    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if

- [`src/minidoc/render_html.ml:72`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:73`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 37 — 2 occurrences</summary>

    current = doc_symbol
    while typeof ( current ) == "struct" and current . container_id != ""
    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent

- [`src/minidoc/render_html.ml:73`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:74`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 38 — 2 occurrences</summary>

    while typeof ( current ) == "struct" and current . container_id != ""
    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent
    end while

- [`src/minidoc/render_html.ml:74`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:75`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 39 — 2 occurrences</summary>

    parent = _symbolById ( project , current . container_id )
    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent
    end while
    return 0

- [`src/minidoc/render_html.ml:75`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:76`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 40 — 2 occurrences</summary>

    if typeof ( parent ) != "struct" then break end if
    if _isType ( parent ) then return parent end if
    current = parent
    end while
    return 0
    end function

- [`src/minidoc/render_html.ml:76`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:77`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 41 — 2 occurrences</summary>

    function _symbolLink ( project , doc_symbol )
    if _isType ( doc_symbol ) then return _typePage ( doc_symbol ) end if
    owner = _ownerType ( project , doc_symbol )
    if typeof ( owner ) == "struct" then return _typePage ( owner ) + "#" + doc_symbol . id end if
    file = _fileById ( project , doc_symbol . file_id )
    if typeof ( file ) == "struct" then return _filePage ( file ) + "#" + doc_symbol . id end if

- [`src/minidoc/render_html.ml:85`](File-src-minidoc-render-html-ml-1870373141.md)
- [`src/minidoc/render_markdown.ml:86`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 42 — 2 occurrences</summary>

    packages = _packages ( project )
    if len ( packages ) > 0 then
    for i = 0 to len ( packages ) - 1
    writer . appendString ( "- [" + packages [ i ] + "](" + _packagePage ( packages [ i ] ) + ")\n" )
    end for
    end if

- [`src/minidoc/render_markdown.ml:276`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/render_markdown.ml:325`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 43 — 2 occurrences</summary>

    if len ( packages ) > 0 then
    for i = 0 to len ( packages ) - 1
    writer . appendString ( "- [" + packages [ i ] + "](" + _packagePage ( packages [ i ] ) + ")\n" )
    end for
    end if
    return writer . toString ( )

- [`src/minidoc/render_markdown.ml:277`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/render_markdown.ml:326`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>

<details>
<summary>Clone 44 — 2 occurrences</summary>

    for i = 0 to len ( packages ) - 1
    writer . appendString ( "- [" + packages [ i ] + "](" + _packagePage ( packages [ i ] ) + ")\n" )
    end for
    end if
    return writer . toString ( )
    end function

- [`src/minidoc/render_markdown.ml:278`](File-src-minidoc-render-markdown-ml-212465045.md)
- [`src/minidoc/render_markdown.ml:327`](File-src-minidoc-render-markdown-ml-212465045.md)

</details>


## Definitions

- **Cognitive complexity:** decision complexity weighted by nesting; logical `and`/`or` operators add one.
- **Cyclomatic complexity:** one plus decisions from conditions, loops, switch cases, and logical `and`/`or` operators.
- **Documentation coverage:** percentage of non-internal API declarations checked by `MD2201` that have a documentation summary.
- **Halstead metrics:** operators and operands are counted from MiniLang lexical tokens. Estimated defects are volume divided by 3,000.
- **Maintainability index:** normalized 0–100 index based on Halstead volume, cyclomatic complexity, and source lines. Project MI is source-line weighted across files.
- **SLOC:** non-empty lines containing MiniLang tokens after conditional preprocessing; comment-only lines are excluded.
