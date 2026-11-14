/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

package sample.duplicate

/// First copy of a public declaration.
/// @param value Input value.
function repeated(value)
  return value
end function

/// Second copy with the same identity must be diagnosed.
/// @param value Input value.
function repeated(value)
  return value
end function
