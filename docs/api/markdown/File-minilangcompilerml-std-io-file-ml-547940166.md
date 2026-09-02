# `../MiniLangCompilerML/std/io/file.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.io.file`](Package-std-io-file-759994052.md)

Reachable from entry: **yes**

## Imports

- `std/fs.ml` as `fs` → [../MiniLangCompilerML/std/fs.ml](File-minilangcompilerml-std-fs-ml-1549776322.md)
- `std/path.ml` as `path_api` → [../MiniLangCompilerML/std/path.ml](File-minilangcompilerml-std-path-ml-1069507222.md)

## Declarations

<a id="function-function-std-io-file-error-function-error-code-operation-message-minilangcompilerml-std-io-file-ml-1671017157"></a>
### _error

```ml
function _error(code, operation, message)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `code` | `dynamic` | — |  |
| `operation` | `dynamic` | — |  |
| `message` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:30`

<a id="function-function-std-io-file-i64-function-i64-buffer-offset-minilangcompilerml-std-io-file-ml-2127978373"></a>
### _i64

```ml
function _i64(buffer, offset)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buffer` | `dynamic` | — |  |
| `offset` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:38`

<a id="function-function-std-io-file-nativeerrorcode-function-nativeerrorcode-minilangcompilerml-std-io-file-ml-1471911976"></a>
### _nativeErrorCode

```ml
function _nativeErrorCode()
```


Source: `../MiniLangCompilerML/std/io/file.ml:133`

<a id="function-function-std-io-file-nativefailure-function-nativefailure-operation-minilangcompilerml-std-io-file-ml-33534309"></a>
### _nativeFailure

```ml
function _nativeFailure(operation)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `operation` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:145`

<a id="function-function-std-io-file-openfile-function-openfile-path-readable-writable-creation-durable-minilangcompilerml-std-io-file-ml-1034687851"></a>
### _openFile

```ml
function _openFile(path, readable, writable, creation, durable)
```

creation: 0=open existing, 1=open or create, 2=create/truncate, 3=create new.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `readable` | `dynamic` | — |  |
| `writable` | `dynamic` | — |  |
| `creation` | `dynamic` | — |  |
| `durable` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:150`

<a id="function-function-std-io-file-u32-function-u32-buffer-offset-minilangcompilerml-std-io-file-ml-789274085"></a>
### _u32

```ml
function _u32(buffer, offset)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buffer` | `dynamic` | — |  |
| `offset` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:34`

<a id="function-function-std-io-file-validateopen-function-validateopen-file-operation-minilangcompilerml-std-io-file-ml-1386965133"></a>
### _validateOpen

```ml
function _validateOpen(file, operation)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `operation` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:58`

<a id="function-function-std-io-file-validslice-function-validslice-buffer-offset-count-operation-minilangcompilerml-std-io-file-ml-341105907"></a>
### _validSlice

```ml
function _validSlice(buffer, offset, count, operation)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `buffer` | `dynamic` | — |  |
| `offset` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |
| `operation` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:49`

<a id="function-function-std-io-file-append-function-append-file-source-sourceoffset-count-minilangcompilerml-std-io-file-ml-1548894476"></a>
### append

```ml
function append(file, source, sourceOffset, count)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `source` | `dynamic` | — |  |
| `sourceOffset` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:270`

<a id="function-function-std-io-file-atomicmove-function-atomicmove-source-destination-replaceexisting-minilangcompilerml-std-io-file-ml-1739114444"></a>
### atomicMove

```ml
function atomicMove(source, destination, replaceExisting)
```

Rename within one filesystem. With replaceExisting this is the primitive for publishing a fully flushed temporary file atomically.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `destination` | `dynamic` | — |  |
| `replaceExisting` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:448`

<a id="function-function-std-io-file-close-function-close-file-minilangcompilerml-std-io-file-ml-1146153590"></a>
### close

```ml
function close(file)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:360`

<a id="constant-constant-std-io-file-closed-handle-const-closed-handle-265-minilangcompilerml-std-io-file-ml-1021239388"></a>
### CLOSED_HANDLE

```ml
const CLOSED_HANDLE = 265
```


Source: `../MiniLangCompilerML/std/io/file.ml:17`

<a id="extern_function-extern-function-std-io-file-closehandle-extern-function-closehandle-handle-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-1130404242"></a>
### CloseHandle

```ml
extern function CloseHandle(handle as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:91`

<a id="function-function-std-io-file-create-function-create-path-minilangcompilerml-std-io-file-ml-1762522747"></a>
### create

```ml
function create(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:195`

<a id="constant-constant-std-io-file-create-always-const-create-always-2-minilangcompilerml-std-io-file-ml-1337670035"></a>
### CREATE_ALWAYS

```ml
const CREATE_ALWAYS = 2
```


Source: `../MiniLangCompilerML/std/io/file.ml:69`

<a id="constant-constant-std-io-file-create-new-const-create-new-1-minilangcompilerml-std-io-file-ml-1931696908"></a>
### CREATE_NEW

```ml
const CREATE_NEW = 1
```


Source: `../MiniLangCompilerML/std/io/file.ml:68`

<a id="function-function-std-io-file-createdirectory-function-createdirectory-path-minilangcompilerml-std-io-file-ml-56440981"></a>
### createDirectory

```ml
function createDirectory(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:377`

<a id="extern_function-extern-function-std-io-file-createdirectoryw-extern-function-createdirectoryw-path-as-wstr-security-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-2023599573"></a>
### CreateDirectoryW

```ml
extern function CreateDirectoryW(path as wstr, security as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |
| `security` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:93`

<a id="function-function-std-io-file-createdurable-function-createdurable-path-minilangcompilerml-std-io-file-ml-1544979281"></a>
### createDurable

```ml
function createDurable(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:203`

<a id="extern_function-extern-function-std-io-file-createfilew-extern-function-createfilew-path-as-wstr-access-as-u32-share-as-u32-security-as-ptr-creation-as-u32-flags-as-u32-template-as-ptr-from-kernel32-dll-returns-ptr-minilangcompilerml-std-io-file-ml-2040743620"></a>
### CreateFileW

```ml
extern function CreateFileW(path as wstr, access as u32, share as u32, security as ptr, creation as u32, flags as u32, template as ptr) from "kernel32.dll" returns ptr
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |
| `access` | `u32` | — |  |
| `share` | `u32` | — |  |
| `security` | `ptr` | — |  |
| `creation` | `u32` | — |  |
| `flags` | `u32` | — |  |
| `template` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:82`

<a id="function-function-std-io-file-createnew-function-createnew-path-minilangcompilerml-std-io-file-ml-1016131735"></a>
### createNew

```ml
function createNew(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:199`

<a id="function-function-std-io-file-createnewdurable-function-createnewdurable-path-minilangcompilerml-std-io-file-ml-1449999551"></a>
### createNewDurable

```ml
function createNewDurable(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:207`

<a id="function-function-std-io-file-deletepath-function-deletepath-path-minilangcompilerml-std-io-file-ml-240859819"></a>
### deletePath

```ml
function deletePath(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:410`

<a id="function-function-std-io-file-directoryexists-function-directoryexists-path-minilangcompilerml-std-io-file-ml-525642881"></a>
### directoryExists

```ml
function directoryExists(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:406`

<a id="constant-constant-std-io-file-error-lock-violation-const-error-lock-violation-33-minilangcompilerml-std-io-file-ml-1985523937"></a>
### ERROR_LOCK_VIOLATION

```ml
const ERROR_LOCK_VIOLATION = 33
```


Source: `../MiniLangCompilerML/std/io/file.ml:78`

<a id="constant-constant-std-io-file-file-attribute-normal-const-file-attribute-normal-128-minilangcompilerml-std-io-file-ml-874696858"></a>
### FILE_ATTRIBUTE_NORMAL

```ml
const FILE_ATTRIBUTE_NORMAL = 128
```


Source: `../MiniLangCompilerML/std/io/file.ml:72`

<a id="constant-constant-std-io-file-file-begin-const-file-begin-0-minilangcompilerml-std-io-file-ml-1092420723"></a>
### FILE_BEGIN

```ml
const FILE_BEGIN = 0
```


Source: `../MiniLangCompilerML/std/io/file.ml:75`

<a id="constant-constant-std-io-file-file-err-const-file-err-263-minilangcompilerml-std-io-file-ml-657965024"></a>
### FILE_ERR

```ml
const FILE_ERR = 263
```


Source: `../MiniLangCompilerML/std/io/file.ml:15`

<a id="constant-constant-std-io-file-file-flag-backup-semantics-const-file-flag-backup-semantics-33554432-minilangcompilerml-std-io-file-ml-390652508"></a>
### FILE_FLAG_BACKUP_SEMANTICS

```ml
const FILE_FLAG_BACKUP_SEMANTICS = 33554432
```


Source: `../MiniLangCompilerML/std/io/file.ml:74`

<a id="constant-constant-std-io-file-file-flag-write-through-const-file-flag-write-through-2147483648-minilangcompilerml-std-io-file-ml-418906702"></a>
### FILE_FLAG_WRITE_THROUGH

```ml
const FILE_FLAG_WRITE_THROUGH = 2147483648
```


Source: `../MiniLangCompilerML/std/io/file.ml:73`

<a id="constant-constant-std-io-file-file-share-all-const-file-share-all-7-minilangcompilerml-std-io-file-ml-1749833536"></a>
### FILE_SHARE_ALL

```ml
const FILE_SHARE_ALL = 7
```


Source: `../MiniLangCompilerML/std/io/file.ml:67`

<a id="function-function-std-io-file-fileexists-function-fileexists-path-minilangcompilerml-std-io-file-ml-1266196695"></a>
### fileExists

```ml
function fileExists(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:402`

- [std.io.file.FileHandle](Type-std-io-file-filehandle-736043342.md) — struct
<a id="function-function-std-io-file-flush-function-flush-file-minilangcompilerml-std-io-file-ml-1735367714"></a>
### flush

```ml
function flush(file)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:303`

<a id="extern_function-extern-function-std-io-file-flushfilebuffers-extern-function-flushfilebuffers-handle-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-1760264660"></a>
### FlushFileBuffers

```ml
extern function FlushFileBuffers(handle as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:88`

<a id="constant-constant-std-io-file-generic-read-const-generic-read-2147483648-minilangcompilerml-std-io-file-ml-841182448"></a>
### GENERIC_READ

```ml
const GENERIC_READ = 2147483648
```


Source: `../MiniLangCompilerML/std/io/file.ml:65`

<a id="constant-constant-std-io-file-generic-write-const-generic-write-1073741824-minilangcompilerml-std-io-file-ml-449653224"></a>
### GENERIC_WRITE

```ml
const GENERIC_WRITE = 1073741824
```


Source: `../MiniLangCompilerML/std/io/file.ml:66`

<a id="extern_function-extern-function-std-io-file-getfilesizeex-extern-function-getfilesizeex-handle-as-ptr-output-as-bytes-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-322744348"></a>
### GetFileSizeEx

```ml
extern function GetFileSizeEx(handle as ptr, output as bytes) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |
| `output` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:86`

<a id="extern_function-extern-function-std-io-file-getlasterror-extern-function-getlasterror-from-kernel32-dll-returns-u32-minilangcompilerml-std-io-file-ml-1186238496"></a>
### GetLastError

```ml
extern function GetLastError() from "kernel32.dll" returns u32
```


Source: `../MiniLangCompilerML/std/io/file.ml:92`

<a id="function-function-std-io-file-joinpath-function-joinpath-left-right-minilangcompilerml-std-io-file-ml-677093889"></a>
### joinPath

```ml
function joinPath(left, right)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `left` | `dynamic` | — |  |
| `right` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:417`

<a id="function-function-std-io-file-lock-function-lock-file-mode-wait-minilangcompilerml-std-io-file-ml-1679210736"></a>
### lock

```ml
function lock(file, mode, wait)
```

Acquire a whole-file advisory lock. mode is "shared" or "exclusive".

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `mode` | `dynamic` | — |  |
| `wait` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:316`

<a id="constant-constant-std-io-file-lock-conflict-const-lock-conflict-264-minilangcompilerml-std-io-file-ml-171173893"></a>
### LOCK_CONFLICT

```ml
const LOCK_CONFLICT = 264
```


Source: `../MiniLangCompilerML/std/io/file.ml:16`

<a id="constant-constant-std-io-file-lockfile-exclusive-lock-const-lockfile-exclusive-lock-2-minilangcompilerml-std-io-file-ml-901389083"></a>
### LOCKFILE_EXCLUSIVE_LOCK

```ml
const LOCKFILE_EXCLUSIVE_LOCK = 2
```


Source: `../MiniLangCompilerML/std/io/file.ml:77`

<a id="constant-constant-std-io-file-lockfile-fail-immediately-const-lockfile-fail-immediately-1-minilangcompilerml-std-io-file-ml-1049507864"></a>
### LOCKFILE_FAIL_IMMEDIATELY

```ml
const LOCKFILE_FAIL_IMMEDIATELY = 1
```


Source: `../MiniLangCompilerML/std/io/file.ml:76`

<a id="extern_function-extern-function-std-io-file-lockfileex-extern-function-lockfileex-handle-as-ptr-flags-as-u32-reserved-as-u32-lowcount-as-u32-highcount-as-u32-overlapped-as-bytes-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-2102510574"></a>
### LockFileEx

```ml
extern function LockFileEx(handle as ptr, flags as u32, reserved as u32, lowCount as u32, highCount as u32, overlapped as bytes) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |
| `flags` | `u32` | — |  |
| `reserved` | `u32` | — |  |
| `lowCount` | `u32` | — |  |
| `highCount` | `u32` | — |  |
| `overlapped` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:89`

<a id="constant-constant-std-io-file-max-io-count-const-max-io-count-2147483647-minilangcompilerml-std-io-file-ml-1460800905"></a>
### MAX_IO_COUNT

```ml
const MAX_IO_COUNT = 2147483647
```


Source: `../MiniLangCompilerML/std/io/file.ml:18`

<a id="constant-constant-std-io-file-movefile-replace-existing-const-movefile-replace-existing-1-minilangcompilerml-std-io-file-ml-1761630276"></a>
### MOVEFILE_REPLACE_EXISTING

```ml
const MOVEFILE_REPLACE_EXISTING = 1
```


Source: `../MiniLangCompilerML/std/io/file.ml:79`

<a id="constant-constant-std-io-file-movefile-write-through-const-movefile-write-through-8-minilangcompilerml-std-io-file-ml-1367915105"></a>
### MOVEFILE_WRITE_THROUGH

```ml
const MOVEFILE_WRITE_THROUGH = 8
```


Source: `../MiniLangCompilerML/std/io/file.ml:80`

<a id="extern_function-extern-function-std-io-file-movefileexw-extern-function-movefileexw-source-as-wstr-destination-as-wstr-flags-as-u32-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-2116112674"></a>
### MoveFileExW

```ml
extern function MoveFileExW(source as wstr, destination as wstr, flags as u32) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `wstr` | — |  |
| `destination` | `wstr` | — |  |
| `flags` | `u32` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:95`

<a id="function-function-std-io-file-movepath-function-movepath-source-destination-replaceexisting-minilangcompilerml-std-io-file-ml-1456287624"></a>
### movePath

```ml
function movePath(source, destination, replaceExisting)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `source` | `dynamic` | — |  |
| `destination` | `dynamic` | — |  |
| `replaceExisting` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:462`

<a id="constant-constant-std-io-file-open-always-const-open-always-4-minilangcompilerml-std-io-file-ml-1997261585"></a>
### OPEN_ALWAYS

```ml
const OPEN_ALWAYS = 4
```


Source: `../MiniLangCompilerML/std/io/file.ml:71`

<a id="constant-constant-std-io-file-open-existing-const-open-existing-3-minilangcompilerml-std-io-file-ml-898678846"></a>
### OPEN_EXISTING

```ml
const OPEN_EXISTING = 3
```


Source: `../MiniLangCompilerML/std/io/file.ml:70`

<a id="function-function-std-io-file-openread-function-openread-path-minilangcompilerml-std-io-file-ml-295283047"></a>
### openRead

```ml
function openRead(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:177`

<a id="function-function-std-io-file-openreadwrite-function-openreadwrite-path-createifmissing-minilangcompilerml-std-io-file-ml-347330490"></a>
### openReadWrite

```ml
function openReadWrite(path, createIfMissing)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `createIfMissing` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:181`

<a id="function-function-std-io-file-openreadwritedurable-function-openreadwritedurable-path-createifmissing-minilangcompilerml-std-io-file-ml-282292080"></a>
### openReadWriteDurable

```ml
function openReadWriteDurable(path, createIfMissing)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `createIfMissing` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:188`

<a id="function-function-std-io-file-pathexists-function-pathexists-path-minilangcompilerml-std-io-file-ml-360534219"></a>
### pathExists

```ml
function pathExists(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:398`

<a id="function-function-std-io-file-readallbytes-function-readallbytes-path-maximumbytes-minilangcompilerml-std-io-file-ml-1576774818"></a>
### readAllBytes

```ml
function readAllBytes(path, maximumBytes)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `maximumBytes` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:421`

<a id="function-function-std-io-file-readalltext-function-readalltext-path-maximumbytes-minilangcompilerml-std-io-file-ml-436289566"></a>
### readAllText

```ml
function readAllText(path, maximumBytes)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |
| `maximumBytes` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:438`

<a id="function-function-std-io-file-readat-function-readat-file-fileoffset-destination-destinationoffset-count-minilangcompilerml-std-io-file-ml-1886160611"></a>
### readAt

```ml
function readAt(file, fileOffset, destination, destinationOffset, count)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `fileOffset` | `dynamic` | — |  |
| `destination` | `dynamic` | — |  |
| `destinationOffset` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:211`

<a id="function-function-std-io-file-readexactat-function-readexactat-file-fileoffset-destination-destinationoffset-count-minilangcompilerml-std-io-file-ml-1105525751"></a>
### readExactAt

```ml
function readExactAt(file, fileOffset, destination, destinationOffset, count)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `fileOffset` | `dynamic` | — |  |
| `destination` | `dynamic` | — |  |
| `destinationOffset` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:233`

<a id="extern_function-extern-function-std-io-file-readfile-extern-function-readfile-handle-as-ptr-output-as-bytes-count-as-u32-actual-as-bytes-overlapped-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-374023814"></a>
### ReadFile

```ml
extern function ReadFile(handle as ptr, output as bytes, count as u32, actual as bytes, overlapped as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |
| `output` | `bytes` | — |  |
| `count` | `u32` | — |  |
| `actual` | `bytes` | — |  |
| `overlapped` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:83`

<a id="function-function-std-io-file-removedirectory-function-removedirectory-path-minilangcompilerml-std-io-file-ml-822687753"></a>
### removeDirectory

```ml
function removeDirectory(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:388`

<a id="extern_function-extern-function-std-io-file-removedirectoryw-extern-function-removedirectoryw-path-as-wstr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-1703777337"></a>
### RemoveDirectoryW

```ml
extern function RemoveDirectoryW(path as wstr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:94`

<a id="extern_function-extern-function-std-io-file-setendoffile-extern-function-setendoffile-handle-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-1395645486"></a>
### SetEndOfFile

```ml
extern function SetEndOfFile(handle as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:87`

<a id="extern_function-extern-function-std-io-file-setfilepointerex-extern-function-setfilepointerex-handle-as-ptr-distance-as-i64-newposition-as-ptr-method-as-u32-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-708170828"></a>
### SetFilePointerEx

```ml
extern function SetFilePointerEx(handle as ptr, distance as i64, newPosition as ptr, method as u32) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |
| `distance` | `i64` | — |  |
| `newPosition` | `ptr` | — |  |
| `method` | `u32` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:85`

<a id="function-function-std-io-file-size-function-size-file-minilangcompilerml-std-io-file-ml-195110638"></a>
### size

```ml
function size(file)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:278`

<a id="function-function-std-io-file-syncdirectory-function-syncdirectory-path-minilangcompilerml-std-io-file-ml-354873879"></a>
### syncDirectory

```ml
function syncDirectory(path)
```

Persist directory-entry updates after an atomic rename on POSIX. Windows MoveFileExW with MOVEFILE_WRITE_THROUGH already provides the matching fence.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:468`

<a id="function-function-std-io-file-truncate-function-truncate-file-newsize-minilangcompilerml-std-io-file-ml-427381913"></a>
### truncate

```ml
function truncate(file, newSize)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `newSize` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:291`

<a id="function-function-std-io-file-unlock-function-unlock-file-minilangcompilerml-std-io-file-ml-220951086"></a>
### unlock

```ml
function unlock(file)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:346`

<a id="extern_function-extern-function-std-io-file-unlockfileex-extern-function-unlockfileex-handle-as-ptr-reserved-as-u32-lowcount-as-u32-highcount-as-u32-overlapped-as-bytes-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-2102682867"></a>
### UnlockFileEx

```ml
extern function UnlockFileEx(handle as ptr, reserved as u32, lowCount as u32, highCount as u32, overlapped as bytes) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |
| `reserved` | `u32` | — |  |
| `lowCount` | `u32` | — |  |
| `highCount` | `u32` | — |  |
| `overlapped` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:90`

<a id="function-function-std-io-file-writeat-function-writeat-file-fileoffset-source-sourceoffset-count-minilangcompilerml-std-io-file-ml-205670623"></a>
### writeAt

```ml
function writeAt(file, fileOffset, source, sourceOffset, count)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `file` | `dynamic` | — |  |
| `fileOffset` | `dynamic` | — |  |
| `source` | `dynamic` | — |  |
| `sourceOffset` | `dynamic` | — |  |
| `count` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:244`

<a id="extern_function-extern-function-std-io-file-writefile-extern-function-writefile-handle-as-ptr-input-as-bytes-count-as-u32-actual-as-bytes-overlapped-as-ptr-from-kernel32-dll-returns-bool-minilangcompilerml-std-io-file-ml-65914865"></a>
### WriteFile

```ml
extern function WriteFile(handle as ptr, input as bytes, count as u32, actual as bytes, overlapped as ptr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `handle` | `ptr` | — |  |
| `input` | `bytes` | — |  |
| `count` | `u32` | — |  |
| `actual` | `bytes` | — |  |
| `overlapped` | `ptr` | — |  |


Source: `../MiniLangCompilerML/std/io/file.ml:84`
