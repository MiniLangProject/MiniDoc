#!/usr/bin/env bash
#
# Copyright 2026 Nils Kopal
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0

set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
compiler="${MINILANG_COMPILER:-$root/../MiniLangCompilerML/build/mlc_linux_x64}"
output="$root/build"
mkdir -p "$output"

"$compiler" "$root/src/main.ml" "$output/minidoc" \
  --target linux-x64 -I "$root/src" -I "$root/../MiniLangCompilerML"
"$compiler" "$root/tests/runtests.ml" "$output/minidoc_tests" \
  --target linux-x64 -I "$root/src" -I "$root/../MiniLangCompilerML"
chmod +x "$output/minidoc" "$output/minidoc_tests"
"$output/minidoc_tests" "$root"

echo "MiniDoc build completed: $output"
