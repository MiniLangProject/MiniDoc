# Contributing to MiniDoc

Thank you for improving MiniDoc. The project is intentionally self-hosted: production code and tests are written in MiniLang, while the small platform scripts only build and execute them.

## Development setup

Check out `MiniDoc` and [`MiniLangCompilerML`](https://github.com/MiniLangProject/MiniLangCompilerML) as sibling directories. On Windows, run:

```powershell
.\build.ps1
```

On Linux, run:

```bash
./build.sh
```

The Windows script accepts `-Compiler C:\path\to\mlc_win64.exe`. On Linux, set `MINILANG_COMPILER` when the compiler executable is not in the default sibling checkout.

## Source and documentation conventions

- Keep source, comments, diagnostics, tests, and documentation in English.
- Add the Apache-2.0 copyright header used by the existing MiniLang files.
- Add `//!` documentation to new source files.
- Add `///` documentation and all applicable `@param`, `@returns`, `@error`, `@see`, and `@since` tags to public declarations.
- Mark implementation details with `@internal`; the self-documentation configuration includes them for maintainers.
- Preserve deterministic, case-insensitive alphabetical ordering in generated indexes and manifests.
- Add or update MiniLang tests for behavior changes.

## Regenerating the self-documentation

After a successful build, regenerate the committed HTML and Markdown references with:

```powershell
.\build\minidoc.exe --config .\minidoc.toml
```

Review `docs/api/html/index.html`, `docs/api/markdown/README.md`, `docs/api/markdown/Metrics.md`, and `docs/api/markdown/Diagnostics.md` before committing generated changes.

## Pull requests

Keep changes focused, describe user-visible behavior, and include the test command and result in the pull-request description. By contributing, you agree that your contribution is licensed under the repository's Apache License 2.0.
