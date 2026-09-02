/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Public entry points for the MiniDoc fixture.
//!
//! This file exercises imported functions and conditional compilation.

package sample.app

import sample.models as models
import sample.feature as feature
import external.helper as dependency

/// Maximum number of attempts used by the fixture.
const MAX_ATTEMPTS = 3

/// Builds a display name from a safe <label> & value.
///
/// The implementation delegates object creation to the model package.
/// @param raw The unformatted name.
/// @returns The display name.
/// @see sample.models.createPerson
function createDisplay(raw as string) returns string
  person = models.createPerson(raw)
  return dependency.passThrough(feature.decorate(person.name()))
end function

/// An implementation detail that is absent from public output.
/// @internal
function secretHelper() returns int
  return 42
end function

/// Supplies one side of a duplicate-code fixture.
/// @param value Initial value.
/// @returns The incremented value.
function duplicateAlpha(value as int) returns int
  first = value + 1
  second = first + 1
  third = second + 1
  fourth = third + 1
  fifth = fourth + 1
  return fifth
end function
