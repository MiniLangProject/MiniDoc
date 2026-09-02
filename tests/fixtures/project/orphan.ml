/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! A documented source file that is not reachable from the entry point.

package sample.orphan

/// Returns a stable orphan marker.
/// @returns The marker value.
function orphanMarker() returns int
  return 7
end function

/// Supplies the other side of a duplicate-code fixture.
/// @param value Initial value.
/// @returns The incremented value.
function duplicateBeta(value as int) returns int
  first = value + 1
  second = first + 1
  third = second + 1
  fourth = third + 1
  fifth = fourth + 1
  return fifth
end function
