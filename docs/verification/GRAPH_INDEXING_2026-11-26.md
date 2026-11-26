# Graph indexing verification — 2026-11-26

MiniDoc 0.4.9 replaces repeated linear entity, node, and edge searches with
operation-local hash indexes. Graph traversal, first-match entity selection,
first-edge certainty, node-cap admission, node sorting, and SVG output order
remain unchanged. Edges accumulate in a growable vector.

## Correctness and scope

The full local suite passed **145 checks with zero failures** in **3.8779 s**
(exit code 0). Fifteen SVG fixtures were captured from the original 0.4.8
renderer and compared byte for byte with 0.4.9. Fifteen associated checks cover
graph visibility. Cases include symbol/package granularity, all three
dependency modes, imports, inheritance, unknown/global/unresolved entities,
duplicate and shadowing IDs, directed-edge deduplication, empty graphs, and
node caps. A further regression checks that 35,002 symbols and 12,000 repeated
calls produce the same SVG as their two-symbol, one-edge equivalent.

The fixture sources are `graphFixture`, `graphCases`, and `checkGraphRendering`
in `tests/runtests.ml`; reference SVGs are in `tests/fixtures/graphs/`.
There is no timing threshold in the regression suite.

## Measured microbenchmark

| Renderer | Symbols | Relations | Elapsed time |
| --- | ---: | ---: | ---: |
| 0.4.8 | 2,502 | 1,000 | 0.329253 s |
| 0.4.9 | 2,502 | 1,000 | 0.005107 s |
| 0.4.9 | 35,002 | 12,000 | 0.043325 s |

These are individual Linux x64 process measurements using Python's
`time.monotonic()`, including startup, fixture construction, rendering, and the
SVG write. The comparable small case was about **64.5 times faster**. These
measurements do not establish a speedup for complete MiniQuake3 generation.

Each fixture starts with the six file records from `graphFixture("summary",
"symbol", 100)`. It replaces the symbols with 2,500 or 35,000 unreferenced
symbols followed by `scale-a` and `scale-b`, then repeats the same dynamic
`scale-a` → `scale-b` call 1,000 or 12,000 times. No sorting or analysis stage
is included. All three outputs have the same SHA-256:

`778e3f35d5fe1bff33d48734697f20cd602bcf17a23a72a87029baf21ca3f0df`

## Reference-compiler build pins

| Component | Revision or digest |
| --- | --- |
| Original MiniDoc 0.4.8 source | `b379ab2fd4df5725f22ad1ba25ff29a59546d3e9` |
| MiniLangCompilerPy 1.3.10 | `8e64c9cfda92199b68ac5d3974fea445f12f6c39` |
| `mlc_win64.py` SHA-256 | `7722d2989d84a9b52cb7e4e5b82b7f88ab476d8e26259c79e959fe3617f3e80d` |
| MiniLangCompilerML imports and standard library | `c1f402d66e7021bd2137e68b5d919569f10f3959` |
| Tested MiniDoc 0.4.9 Linux generator SHA-256 | `2a62ba5563a0aaeddafa6bbc86f2dc5fffe059abead86a14921582704c1e68cb` |

Use complete sibling compiler checkouts at these pins. From the MiniDoc root:

```sh
python3 ../MiniLangCompilerPy/mlc_win64.py tests/runtests.ml build/minidoc_tests \
  --target linux-x64 -I src -I ../MiniLangCompilerML
chmod +x build/minidoc_tests
build/minidoc_tests "$PWD"
```

For an isolated benchmark driver, copy the fixture definitions from
`struct GraphTestFile` up to, but excluding, `function checkGraphRendering`
in `tests/runtests.ml`. Prepend these imports and append the following entry
point. Save the result as `build/graph-benchmark.ml`:

```minilang
import minidoc.graph as graph
import minidoc.model as model
import minidoc.config as configuration
import minidoc.util as util
import mlc.tools as tools

// Insert the fixture definitions here, before main.

function main(args)
  if len(args) != 3 then return 2 end if
  project = graphFixture("summary", "symbol", 100)
  count = configuration._integer(args[1])
  calls = configuration._integer(args[2])
  symbols = tools.arr_vec_new(count + 2)
  for i = 0 to count - 1
    symbols = tools.arr_vec_push(symbols, GraphTestSymbol("unused-" + i,
      "unused.symbol" + i, "unused", "worker"))
  end for
  symbols = tools.arr_vec_push(symbols,
    GraphTestSymbol("scale-a", "app.Alpha", "app.main", "main"))
  symbols = tools.arr_vec_push(symbols,
    GraphTestSymbol("scale-b", "app.Beta", "app.worker", "worker"))
  project.symbols = tools.arr_vec_finish(symbols)
  repeated = model.RelationDoc("scale-a", "scale-b", "calls", "dynamic", "duplicate")
  relations = tools.arr_vec_new(calls)
  for i = 0 to calls - 1
    relations = tools.arr_vec_push(relations, repeated)
  end for
  project.relations = tools.arr_vec_finish(relations)
  written = util.writeText(args[0], graph.renderSvg(project, "calls", "Scale"))
  if typeof(written) == "error" then print written.message return 1 end if
  return 0
end function
```

Build it twice with the same pinned Python compiler and compiler imports. Point
the first `-I` at the original checkout's `src` directory for the old binary,
and at this checkout's `src` for the new binary:

```sh
python3 ../MiniLangCompilerPy/mlc_win64.py build/graph-benchmark.ml build/graph-old \
  --target linux-x64 -I ../MiniDoc-0.4.8/src -I ../MiniLangCompilerML
python3 ../MiniLangCompilerPy/mlc_win64.py build/graph-benchmark.ml build/graph-new \
  --target linux-x64 -I src -I ../MiniLangCompilerML
chmod +x build/graph-old build/graph-new
build/graph-old build/old.svg 2500 1000
build/graph-new build/new.svg 2500 1000
build/graph-new build/large.svg 35000 12000
sha256sum build/old.svg build/new.svg build/large.svg
```

## MiniDoc's regenerated reference

Both output formats were regenerated with strict checking:

```sh
build/minidoc --config minidoc.toml --strict --revision MiniDoc-0.4.9
```

Generation completed in **11.2675 s**, exit code **0**:

```text
MiniDoc: 37 file(s), 2536 symbol(s), 0 warning(s).
```

The reference covers 13 project files. Its configured public documentation
contracts remain **69/69 (100%)**; this is not a claim that internal fields all
have standalone comments. Validation checked **133 generated files**, two
manifests, **4,922 local links**, **3,281 fragment references**, one JSON file,
and four SVG files with **zero defects**. The manifests themselves are excluded
from the generated-file count. No game behavior or gameplay performance was
tested in this generator change.

## Self-hosted compiler 1.3.11 validation

The official Linux x64 compiler release was independently verified against its
archive checksum and `BUILD_INFO.json`. It built the same MiniDoc 0.4.9 sources
using the complete pinned frontend/library checkout. The native build passed
all **145 checks**, including the original SVG goldens and the large-graph
regression.

| Component | Revision or SHA-256 |
| --- | --- |
| Release archive | `MiniLangCompilerML-1.3.11-linux-x64.tar.gz` |
| Archive SHA-256 | `fd4c90b16237c6c159457ceae59e93e0d29615c6ac38c4500b48c6cc36edb626` |
| Compiler source revision in `BUILD_INFO.json` | `a8777b1e0d975c4b238e1df914ddcfb3db3bd994` |
| Released `mlc` executable SHA-256 | `7a61fe5447d0e81d700c834c7f02dce2259c0bd2418050b056653bea742b8c67` |
| Frontend/library import checkout | `c1f402d66e7021bd2137e68b5d919569f10f3959` |
| Native-built MiniDoc executable SHA-256 | `c93e4a45e65e06f8096bf146a3c4f9b360523c6816216a783af122b53f81c55a` |

| Native validation stage | Elapsed time | Exit code |
| --- | ---: | ---: |
| Build MiniDoc executable | 24.423 s | 0 |
| Build test executable | 25.723 s | 0 |
| Run 145-check suite | 5.776 s | 0 |
| Regenerate MiniDoc's HTML and Markdown | 9.9077 s | 0 |

From the repository root, with the extracted release in the location shown
and the complete import checkout beside MiniDoc:

```sh
../toolchain-release/linux/MiniLangCompilerML-1.3.11-linux-x64/mlc \
  src/main.ml build/minidoc-native --target linux-x64 \
  -I src -I ../MiniLangCompilerML \
  --heap-reserve 16g --heap-commit 32m --heap-shrink
../toolchain-release/linux/MiniLangCompilerML-1.3.11-linux-x64/mlc \
  tests/runtests.ml build/minidoc_tests-native --target linux-x64 \
  -I src -I ../MiniLangCompilerML
build/minidoc_tests-native "$PWD"
build/minidoc-native --config minidoc.toml --strict --revision MiniDoc-0.4.9
```

The native generator reported **37 loaded files, 2,536 symbols, and zero
warnings**. All **135 files**, including both output manifests, were byte for
byte identical to the committed reference produced with the Python-built
generator. Repeating the output verifier again checked 133 generated files,
4,922 local links, 3,281 fragment references, one JSON file, and four SVG files
with **zero defects**.

This establishes the native build, regression suite, and MiniDoc's own
reference. It does not identify the cause of the separate interrupted
MiniQuake3 output write or measure a whole-project generation speedup.
