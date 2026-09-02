# `../MiniLangCompilerML/std/process.ml`

[Home](README.md) · [Files](Files.md)

Package: [`std.process`](Package-std-process-639159081.md)

Reachable from entry: **yes**

## Declarations

<a id="function-function-std-process-error-function-error-message-minilangcompilerml-std-process-ml-1812461958"></a>
### _error

```ml
function _error(message)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `message` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:16`

<a id="function-function-std-process-currentdirectory-function-currentdirectory-minilangcompilerml-std-process-ml-1648258307"></a>
### currentDirectory

```ml
function currentDirectory()
```


Source: `../MiniLangCompilerML/std/process.ml:82`

<a id="function-function-std-process-environment-function-environment-name-minilangcompilerml-std-process-ml-1142428270"></a>
### environment

```ml
function environment(name)
```

Return an environment value, or void when the variable is absent.

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:61`

<a id="function-function-std-process-executablepath-function-executablepath-minilangcompilerml-std-process-ml-209594843"></a>
### executablePath

```ml
function executablePath()
```

Return the absolute path of the currently running native image.


Source: `../MiniLangCompilerML/std/process.ml:45`

<a id="extern_function-extern-function-std-process-getcurrentdirectoryw-extern-function-getcurrentdirectoryw-size-as-u32-output-as-bytes-from-kernel32-dll-returns-u32-minilangcompilerml-std-process-ml-896672264"></a>
### GetCurrentDirectoryW

```ml
extern function GetCurrentDirectoryW(size as u32, output as bytes) from "kernel32.dll" returns u32
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `size` | `u32` | — |  |
| `output` | `bytes` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:24`

<a id="extern_function-extern-function-std-process-getcurrentprocessid-extern-function-getcurrentprocessid-from-kernel32-dll-returns-u32-minilangcompilerml-std-process-ml-503865001"></a>
### GetCurrentProcessId

```ml
extern function GetCurrentProcessId() from "kernel32.dll" returns u32
```


Source: `../MiniLangCompilerML/std/process.ml:21`

<a id="extern_function-extern-function-std-process-getenvironmentvariablew-extern-function-getenvironmentvariablew-name-as-wstr-output-as-bytes-size-as-u32-from-kernel32-dll-returns-u32-minilangcompilerml-std-process-ml-1993394691"></a>
### GetEnvironmentVariableW

```ml
extern function GetEnvironmentVariableW(name as wstr, output as bytes, size as u32) from "kernel32.dll" returns u32
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `name` | `wstr` | — |  |
| `output` | `bytes` | — |  |
| `size` | `u32` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:23`

<a id="extern_function-extern-function-std-process-getmodulefilenamew-extern-function-getmodulefilenamew-module-as-ptr-output-as-bytes-size-as-u32-from-kernel32-dll-returns-u32-minilangcompilerml-std-process-ml-1004547950"></a>
### GetModuleFileNameW

```ml
extern function GetModuleFileNameW(module as ptr, output as bytes, size as u32) from "kernel32.dll" returns u32
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `module` | `ptr` | — |  |
| `output` | `bytes` | — |  |
| `size` | `u32` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:22`

<a id="function-function-std-process-id-function-id-minilangcompilerml-std-process-ml-2075186595"></a>
### id

```ml
function id()
```


Source: `../MiniLangCompilerML/std/process.ml:36`

<a id="constant-constant-std-process-max-environment-bytes-const-max-environment-bytes-1048576-minilangcompilerml-std-process-ml-1096129119"></a>
### MAX_ENVIRONMENT_BYTES

```ml
const MAX_ENVIRONMENT_BYTES = 1048576
```


Source: `../MiniLangCompilerML/std/process.ml:13`

<a id="constant-constant-std-process-max-path-bytes-const-max-path-bytes-32768-minilangcompilerml-std-process-ml-388584090"></a>
### MAX_PATH_BYTES

```ml
const MAX_PATH_BYTES = 32768
```


Source: `../MiniLangCompilerML/std/process.ml:14`

<a id="constant-constant-std-process-process-err-const-process-err-261-minilangcompilerml-std-process-ml-636867461"></a>
### PROCESS_ERR

```ml
const PROCESS_ERR = 261
```


Source: `../MiniLangCompilerML/std/process.ml:12`

<a id="function-function-std-process-setcurrentdirectory-function-setcurrentdirectory-path-minilangcompilerml-std-process-ml-1975465456"></a>
### setCurrentDirectory

```ml
function setCurrentDirectory(path)
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `dynamic` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:96`

<a id="extern_function-extern-function-std-process-setcurrentdirectoryw-extern-function-setcurrentdirectoryw-path-as-wstr-from-kernel32-dll-returns-bool-minilangcompilerml-std-process-ml-288996044"></a>
### SetCurrentDirectoryW

```ml
extern function SetCurrentDirectoryW(path as wstr) from "kernel32.dll" returns bool
```

| Parameter | Type | Default | Description |
| --- | --- | --- | --- |
| `path` | `wstr` | — |  |


Source: `../MiniLangCompilerML/std/process.ml:25`
