# MiniDoc workspace refresh (2026-11-14)

MiniDoc 0.4.6 was rebuilt with MiniLang 1.3.8 and used to regenerate HTML and
Markdown references for the MiniLang source repositories available in this
workspace. The MiniLangCompilerML and MiniLangCompilerPy standard libraries
produce identical documentation trees (357 files, byte for byte).
This covers 13 MiniLangProject code repositories and three additional local
MiniLang repositories; the organization's `.github` metadata repository has
no MiniLang source to document.

| Repository | Parsed files | Symbols | Warnings |
| --- | ---: | ---: | ---: |
| MiniDoc | 37 | 2,511 | 0 |
| MiniLangCompilerML (compiler) | 47 | 3,616 | 0 |
| MiniLangCompilerML (stdlib) | 53 | 2,006 | 0 |
| MiniLangCompilerPy (stdlib) | 53 | 2,006 | 0 |
| MiniDoom | 96 | 7,876 | 0 |
| MiniGui | 7 | 1,000 | 0 |
| MiniIDE | 21 | 1,804 | 0 |
| MiniInstaller | 50 | 2,752 | 0 |
| MiniOriginAudit | 32 | 1,292 | 0 |
| MiniPixels | 56 | 2,419 | 0 |
| MiniQuake | 148 | 8,368 | 0 |
| MiniQuake2 | 223 | 9,040 | 0 |
| MiniQuake3 | 591 | 34,329 | 23,981 |
| MiniRealisticDoom | 97 | 7,993 | 0 |
| MiniSQL | 115 | 7,622 | 0 |
| MiniJavaScript | 20 | 1,084 | 655 |
| MiniRedAlert (core reference) | 101 | 3,537 | 2,521 |

The MiniJavaScript, MiniQuake3, and MiniRedAlert diagnostics concern declaration
comment coverage, contract tags, and source headers. They do not include parser
or missing-import errors. MiniRedAlert intentionally generates its configured
core reference rather than every source file. MiniQuake3 required a reserved
import alias to be renamed before it could be parsed with MiniLang 1.3.8.

MiniDoc's own Windows and Linux test suites passed. Compiling MiniDoc with the
Python and self-hosted compilers produced byte-identical Windows PE files and
byte-identical Linux ELF files. The MiniQuake compatibility fixtures affected
by newer reserved keywords also passed their targeted tests.

The complete MiniQuake3 reference contains 591 parsed files and was generated
in 447 seconds on this Windows workstation. MiniDoc now uses transient lookup
indexes and stable merge sorts to keep large projects practical.

This refresh only changes local working trees. The pre-existing uncommitted
changes in MiniPixels, MiniSQL, and MiniJavaScript were preserved.
