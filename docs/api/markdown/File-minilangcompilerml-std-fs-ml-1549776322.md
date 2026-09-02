# `../MiniLangCompilerML/std/fs.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.fs`](Package-std-fs-176676223.md)

Reachable from entry: **yes**

## Imports

- `std/string.ml` as `s` → [../MiniLangCompilerML/std/string.ml](File-minilangcompilerml-std-string-ml-1722707944.md)

## Declarations

<a id="function-function-std-fs-finddataname-function-finddataname-buf-minilangcompilerml-std-fs-ml-1884021170"></a>
### _findDataName

```ml
function _findDataName(buf)
```

Decode the UTF-16 filename field of a WIN32_FIND_DATAW buffer.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buf` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:243`

<a id="function-function-std-fs-fserr-function-fserr-msg-minilangcompilerml-std-fs-ml-256337264"></a>
### _fsErr

```ml
function _fsErr(msg)
```

------------------------------------------------------------ Error helper (stdlib migrated to value-or-error) ------------------------------------------------------------

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `msg` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:47`

<a id="function-function-std-fs-growstringarray-function-growstringarray-items-need-minilangcompilerml-std-fs-ml-1693177659"></a>
### _growStringArray

```ml
function _growStringArray(items, need)
```

Grow an internal string buffer geometrically for directory enumeration.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `items` | `dynamic` | — |  |
| `need` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:255`

<a id="function-function-std-fs-openwritealways-function-openwritealways-path-minilangcompilerml-std-fs-ml-605732804"></a>
### _openWriteAlways

```ml
function _openWriteAlways(path)
```

Open a file for replacement, creating it when necessary.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:386`

<a id="function-function-std-fs-takestringarray-function-takestringarray-items-count-minilangcompilerml-std-fs-ml-791261628"></a>
### _takeStringArray

```ml
function _takeStringArray(items, count)
```

Trim an internal buffer to exactly its initialized elements.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `items` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:282`

<a id="function-function-std-fs-u32le4-function-u32le4-b4-minilangcompilerml-std-fs-ml-2129950571"></a>
### _u32le4

```ml
function _u32le4(b4)
```

decode a 32-bit little-endian unsigned integer from a bytes(4) buffer input: bytes b4 returns: int value

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `b4` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:169`

<a id="function-function-std-fs-u64le8-function-u64le8-b8-minilangcompilerml-std-fs-ml-1083249041"></a>
### _u64le8

```ml
function _u64le8(b8)
```

decode a 64-bit little-endian unsigned integer from a bytes(8) buffer input: bytes b8 returns: int value

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `b8` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:179`

- [std.fs.Access](Type-std-fs-access-569861977.md) — enum
<a id="function-function-std-fs-appendallbytes-function-appendallbytes-path-data-minilangcompilerml-std-fs-ml-148771400"></a>
### appendAllBytes

```ml
function appendAllBytes(path, data)
```

append bytes to a file (simple implementation: read + rewrite) input: string path, bytes data returns: bool ok OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `data` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:716`

<a id="function-function-std-fs-appendalltext-function-appendalltext-path-text-minilangcompilerml-std-fs-ml-138181781"></a>
### appendAllText

```ml
function appendAllText(path, text)
```

append text to a file (simple implementation: read + rewrite) input: string path, string text returns: bool ok OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:738`

<a id="extern_function-extern-function-std-fs-closehandle-extern-function-closehandle-h-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-1176144133"></a>
### CloseHandle

```ml
extern function CloseHandle(h as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:146`

<a id="function-function-std-fs-copyfile-function-copyfile-sourcepath-destpath-overwrite-minilangcompilerml-std-fs-ml-370545373"></a>
### copyFile

```ml
function copyFile(sourcePath, destPath, overwrite)
```

copy a file input: string sourcePath, string destPath, bool overwrite returns: bool ok OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `sourcePath` | `dynamic` | — |  |
| `destPath` | `dynamic` | — |  |
| `overwrite` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:638`

<a id="extern_function-extern-function-std-fs-copyfilew-extern-function-copyfilew-existingpath-as-wstr-newpath-as-wstr-failifexists-as-bool-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-860508687"></a>
### CopyFileW

```ml
extern function CopyFileW(existingPath as wstr, newPath as wstr, failIfExists as bool) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `existingPath` | `wstr` | — |  |
| `newPath` | `wstr` | — |  |
| `failIfExists` | `bool` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:148`

<a id="extern_function-extern-function-std-fs-createfilew-extern-function-createfilew-path-as-wstr-access-as-int-share-as-int-security-as-ptr-creation-as-int-flags-as-int-template-as-ptr-from-kernel32-dll-returns-ptr-minilangcompilerml-std-fs-ml-614133089"></a>
### CreateFileW

```ml
extern function CreateFileW(path as wstr, access as int, share as int, security as ptr, creation as int, flags as int, template as ptr) from "kernel32.dll" returns ptr
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |
| `access` | `int` | — |  |
| `share` | `int` | — |  |
| `security` | `ptr` | — |  |
| `creation` | `int` | — |  |
| `flags` | `int` | — |  |
| `template` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:112`

- [std.fs.Creation](Type-std-fs-creation-832674482.md) — enum
<a id="function-function-std-fs-delete-function-delete-path-minilangcompilerml-std-fs-ml-1769854264"></a>
### delete

```ml
function delete(path)
```

delete a file (treats "already missing" as success) input: string path returns: bool success

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:358`

<a id="constant-constant-std-fs-delete-retry-count-const-delete-retry-count-30-minilangcompilerml-std-fs-ml-1638056875"></a>
### DELETE_RETRY_COUNT

```ml
const DELETE_RETRY_COUNT = 30
```


Source: `../MiniLangCompilerML/std/fs.ml:107`

<a id="constant-constant-std-fs-delete-retry-sleep-ms-const-delete-retry-sleep-ms-5-minilangcompilerml-std-fs-ml-1822446539"></a>
### DELETE_RETRY_SLEEP_MS

```ml
const DELETE_RETRY_SLEEP_MS = 5
```


Source: `../MiniLangCompilerML/std/fs.ml:108`

<a id="extern_function-extern-function-std-fs-deletefilew-extern-function-deletefilew-path-as-wstr-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-2071892400"></a>
### DeleteFileW

```ml
extern function DeleteFileW(path as wstr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:147`

<a id="constant-constant-std-fs-dword-size-const-dword-size-4-minilangcompilerml-std-fs-ml-722783534"></a>
### DWORD_SIZE

```ml
const DWORD_SIZE = 4
```


Source: `../MiniLangCompilerML/std/fs.ml:105`

<a id="function-function-std-fs-exists-function-exists-path-minilangcompilerml-std-fs-ml-1222528944"></a>
### exists

```ml
function exists(path)
```

check whether a file or directory exists input: string path returns: bool exists

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:188`

- [std.fs.FileAttr](Type-std-fs-fileattr-1509238666.md) — enum
<a id="function-function-std-fs-filesize-function-filesize-path-minilangcompilerml-std-fs-ml-1933224868"></a>
### fileSize

```ml
function fileSize(path)
```

get the size of a file in bytes input: string path returns: int size OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:691`

<a id="constant-constant-std-fs-find-data-size-const-find-data-size-592-minilangcompilerml-std-fs-ml-1818487850"></a>
### FIND_DATA_SIZE

```ml
const FIND_DATA_SIZE = 592
```

Directory enumeration (FindFirstFileW/FindNextFileW)


Source: `../MiniLangCompilerML/std/fs.ml:154`

<a id="constant-constant-std-fs-find-name-len-const-find-name-len-520-minilangcompilerml-std-fs-ml-963262921"></a>
### FIND_NAME_LEN

```ml
const FIND_NAME_LEN = 520
```


Source: `../MiniLangCompilerML/std/fs.ml:156`

<a id="constant-constant-std-fs-find-name-off-const-find-name-off-44-minilangcompilerml-std-fs-ml-1845771854"></a>
### FIND_NAME_OFF

```ml
const FIND_NAME_OFF = 44
```


Source: `../MiniLangCompilerML/std/fs.ml:155`

<a id="extern_function-extern-function-std-fs-findclose-extern-function-findclose-h-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-505700865"></a>
### FindClose

```ml
extern function FindClose(h as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:160`

<a id="extern_function-extern-function-std-fs-findfirstfilew-extern-function-findfirstfilew-pattern-as-wstr-data-as-bytes-from-kernel32-dll-returns-ptr-minilangcompilerml-std-fs-ml-1644728098"></a>
### FindFirstFileW

```ml
extern function FindFirstFileW(pattern as wstr, data as bytes) from "kernel32.dll" returns ptr
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `pattern` | `wstr` | — |  |
| `data` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:158`

<a id="extern_function-extern-function-std-fs-findnextfilew-extern-function-findnextfilew-h-as-ptr-data-as-bytes-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-518803706"></a>
### FindNextFileW

```ml
extern function FindNextFileW(h as ptr, data as bytes) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |
| `data` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:159`

<a id="extern_function-extern-function-std-fs-getfileattributesw-extern-function-getfileattributesw-path-as-wstr-from-kernel32-dll-returns-u32-minilangcompilerml-std-fs-ml-1470255528"></a>
### GetFileAttributesW

```ml
extern function GetFileAttributesW(path as wstr) from "kernel32.dll" returns u32
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:150`

<a id="extern_function-extern-function-std-fs-getfilesizeex-extern-function-getfilesizeex-h-as-ptr-sizebuf-as-bytes-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-1835965744"></a>
### GetFileSizeEx

```ml
extern function GetFileSizeEx(h as ptr, sizeBuf as bytes) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |
| `sizeBuf` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:161`

<a id="extern_function-extern-function-std-fs-getlasterror-extern-function-getlasterror-from-kernel32-dll-returns-u32-minilangcompilerml-std-fs-ml-245646577"></a>
### GetLastError

```ml
extern function GetLastError() from "kernel32.dll" returns u32
```


Source: `../MiniLangCompilerML/std/fs.ml:151`

<a id="constant-constant-std-fs-invalid-file-attributes-const-invalid-file-attributes-4294967295-minilangcompilerml-std-fs-ml-147187561"></a>
### INVALID_FILE_ATTRIBUTES

```ml
const INVALID_FILE_ATTRIBUTES = 4294967295
```


Source: `../MiniLangCompilerML/std/fs.ml:65`

<a id="constant-constant-std-fs-invalid-handle-value-const-invalid-handle-value-1-minilangcompilerml-std-fs-ml-634929810"></a>
### INVALID_HANDLE_VALUE

```ml
const INVALID_HANDLE_VALUE = -1
```

------------------------------------------------------------ Win32 constants (kept local to std.fs) ------------------------------------------------------------


Source: `../MiniLangCompilerML/std/fs.ml:64`

<a id="constant-constant-std-fs-io-buf-size-const-io-buf-size-4096-minilangcompilerml-std-fs-ml-933656681"></a>
### IO_BUF_SIZE

```ml
const IO_BUF_SIZE = 4096
```


Source: `../MiniLangCompilerML/std/fs.ml:106`

<a id="function-function-std-fs-isdir-function-isdir-path-minilangcompilerml-std-fs-ml-959979482"></a>
### isDir

```ml
function isDir(path)
```

check whether a path is a directory input: string path returns: bool is_dir

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:201`

<a id="function-function-std-fs-isfile-function-isfile-path-minilangcompilerml-std-fs-ml-2125715092"></a>
### isFile

```ml
function isFile(path)
```

check whether a path is a regular file input: string path returns: bool is_file

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:217`

<a id="function-function-std-fs-joinpath-function-joinpath-base-name-minilangcompilerml-std-fs-ml-795680915"></a>
### joinPath

```ml
function joinPath(base, name)
```

join two path components using the Windows separator input: string base, string name returns: string full

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `base` | `dynamic` | — |  |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:229`

<a id="function-function-std-fs-listdir-function-listdir-path-minilangcompilerml-std-fs-ml-1213176294"></a>
### listDir

```ml
function listDir(path)
```

list directory entries (names only, without '.' and '..') input: string path returns: array<string> names OR error(code=1)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:308`

<a id="function-function-std-fs-movefile-function-movefile-sourcepath-destpath-overwrite-minilangcompilerml-std-fs-ml-1922077549"></a>
### moveFile

```ml
function moveFile(sourcePath, destPath, overwrite)
```

move/rename a file input: string sourcePath, string destPath, bool overwrite returns: bool ok OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `sourcePath` | `dynamic` | — |  |
| `destPath` | `dynamic` | — |  |
| `overwrite` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:662`

<a id="extern_function-extern-function-std-fs-movefilew-extern-function-movefilew-existingpath-as-wstr-newpath-as-wstr-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-2031313520"></a>
### MoveFileW

```ml
extern function MoveFileW(existingPath as wstr, newPath as wstr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `existingPath` | `wstr` | — |  |
| `newPath` | `wstr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:149`

<a id="function-function-std-fs-readallbytes-function-readallbytes-path-minilangcompilerml-std-fs-ml-1322272028"></a>
### readAllBytes

```ml
function readAllBytes(path)
```

read all bytes from a file input: string path returns: bytes data OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:441`

<a id="function-function-std-fs-readalllines-function-readalllines-path-minilangcompilerml-std-fs-ml-871127764"></a>
### readAllLines

```ml
function readAllLines(path)
```

read a file as lines (split by '\n', trims a trailing '\r') input: string path returns: array lines OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:760`

<a id="function-function-std-fs-readalltext-function-readalltext-path-minilangcompilerml-std-fs-ml-1197423564"></a>
### readAllText

```ml
function readAllText(path)
```

read all text from a file (assumes UTF - 8) input: string path returns: string text OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:548`

<a id="extern_function-extern-function-std-fs-readfile-extern-function-readfile-h-as-ptr-buf-as-bytes-n-as-int-bytesread-as-bytes-overlapped-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-1660736048"></a>
### ReadFile

```ml
extern function ReadFile(h as ptr, buf as bytes, n as int, bytesRead as bytes, overlapped as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |
| `buf` | `bytes` | — |  |
| `n` | `int` | — |  |
| `bytesRead` | `bytes` | — |  |
| `overlapped` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:122`

- [std.fs.Share](Type-std-fs-share-399483706.md) — enum
<a id="extern_function-extern-function-std-fs-sleep-extern-function-sleep-ms-as-int-from-kernel32-dll-returns-void-minilangcompilerml-std-fs-ml-1383925724"></a>
### Sleep

```ml
extern function Sleep(ms as int) from "kernel32.dll" returns void
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `ms` | `int` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:162`

<a id="constant-constant-std-fs-write-retry-count-const-write-retry-count-30-minilangcompilerml-std-fs-ml-1914287305"></a>
### WRITE_RETRY_COUNT

```ml
const WRITE_RETRY_COUNT = 30
```


Source: `../MiniLangCompilerML/std/fs.ml:109`

<a id="constant-constant-std-fs-write-retry-sleep-ms-const-write-retry-sleep-ms-10-minilangcompilerml-std-fs-ml-898947387"></a>
### WRITE_RETRY_SLEEP_MS

```ml
const WRITE_RETRY_SLEEP_MS = 10
```


Source: `../MiniLangCompilerML/std/fs.ml:110`

<a id="function-function-std-fs-writeallbytes-function-writeallbytes-path-data-minilangcompilerml-std-fs-ml-1445071642"></a>
### writeAllBytes

```ml
function writeAllBytes(path, data)
```

write all bytes to a file (overwrites if it exists) input: string path, bytes data returns: bool ok OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `data` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:414`

<a id="function-function-std-fs-writealltext-function-writealltext-path-text-minilangcompilerml-std-fs-ml-1614471245"></a>
### writeAllText

```ml
function writeAllText(path, text)
```

write all text to a file (overwrites if it exists) input: string path, string text returns: bool ok OR error(...)

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `text` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:521`

<a id="extern_function-extern-function-std-fs-writefile-extern-function-writefile-h-as-ptr-buf-as-bytes-n-as-int-byteswritten-as-bytes-overlapped-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-fs-ml-487405115"></a>
### WriteFile

```ml
extern function WriteFile(h as ptr, buf as bytes, n as int, bytesWritten as bytes, overlapped as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |
| `buf` | `bytes` | — |  |
| `n` | `int` | — |  |
| `bytesWritten` | `bytes` | — |  |
| `overlapped` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:130`

<a id="extern_function-extern-function-std-fs-writefilecstr-extern-function-writefilecstr-h-as-ptr-buf-as-cstr-n-as-int-byteswritten-as-bytes-overlapped-as-ptr-from-kernel32-dll-symbol-writefile-returns-bool-minilangcompilerml-std-fs-ml-2068912235"></a>
### WriteFileCStr

```ml
extern function WriteFileCStr(h as ptr, buf as cstr, n as int, bytesWritten as bytes, overlapped as ptr) from "kernel32.dll" symbol "WriteFile" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `h` | `ptr` | — |  |
| `buf` | `cstr` | — |  |
| `n` | `int` | — |  |
| `bytesWritten` | `bytes` | — |  |
| `overlapped` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/fs.ml:138`
