/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! External dependency used to verify compact dependency documentation.

package external.helper

/// Returns an input value without changing it.
/// @param value Value to return.
/// @returns The unchanged value.
function passThrough(value as string) returns string
  return value
end function
