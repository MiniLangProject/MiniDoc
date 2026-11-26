/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Exercises current MiniLang binding contracts and UTF-8 string signatures.

package sample.current

/// Keeps the counter's integer contract for every subsequent assignment.
var fixed_count as int = 2

/// Allows a missing label while preserving its optional string contract.
var optional_label as string? = void

/// Checks this initial write without establishing a fixed variable contract.
legacy_count as int = 3

/// Preserves non-ASCII bytes in a documented constant.
const UNICODE_SAMPLE = "Grüße 🌍"

/// Retains string escapes instead of inserting control bytes in signatures.
const ESCAPED_SAMPLE = "line\ncarriage\rcolumn\tnul\0\"quote\"\\path"

/// Holds a nested fixed binding to check namespace-qualified declarations.
namespace State
  /// Keeps the nested sequence number an integer.
  var sequence as int = 5
end namespace

/// Returns the Unicode label with its source-level escaped default intact.
/// @param label Text to return without transformation.
/// @returns The supplied label.
function formatLabel(label as string = "Grüße 🌍\nnext\tcolumn\r\"quote\"\\path\0") returns string
  return label
end function
