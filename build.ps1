<#
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
#>

param(
    [string]$Compiler = "",
    [switch]$SkipTests
)

$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
if ([string]::IsNullOrWhiteSpace($Compiler)) {
    $Compiler = Join-Path $root "..\MiniLangCompilerML\build\mlc_win64.exe"
}
$Compiler = [System.IO.Path]::GetFullPath($Compiler)
if (-not (Test-Path -LiteralPath $Compiler -PathType Leaf)) {
    throw "MiniLang compiler not found: $Compiler"
}

$outputDirectory = Join-Path $root "build"
New-Item -ItemType Directory -Force -Path $outputDirectory | Out-Null
$compilerSources = [System.IO.Path]::GetFullPath((Join-Path $root "..\MiniLangCompilerML"))
$sourceRoot = Join-Path $root "src"

& $Compiler `
    (Join-Path $sourceRoot "main.ml") `
    (Join-Path $outputDirectory "minidoc.exe") `
    -I $sourceRoot `
    -I $compilerSources
if ($LASTEXITCODE -ne 0) {
    throw "MiniDoc compilation failed with exit code $LASTEXITCODE"
}

if (-not $SkipTests) {
    & $Compiler `
        (Join-Path $root "tests\runtests.ml") `
        (Join-Path $outputDirectory "minidoc_tests.exe") `
        -I $sourceRoot `
        -I $compilerSources
    if ($LASTEXITCODE -ne 0) {
        throw "MiniDoc test compilation failed with exit code $LASTEXITCODE"
    }
    & (Join-Path $outputDirectory "minidoc_tests.exe") $root
    if ($LASTEXITCODE -ne 0) {
        throw "MiniDoc tests failed with exit code $LASTEXITCODE"
    }
}

Write-Host "MiniDoc build completed: $outputDirectory"
