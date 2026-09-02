/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Domain types used by the fixture application.

package sample.models

/// A value that exposes a name.
interface Named
  /// Returns the stored name.
  /// @returns The stored name.
  function name() returns string
end interface

/// A person with a displayable name.
struct Person implements Named
  /// The person's raw name.
  value as string

  /// Returns the person's raw name.
  /// @returns The raw name.
  function name() returns string
    return this.value
  end function
end struct

/// Creates a person.
/// @param value The person's raw name.
/// @returns A new person.
function createPerson(value as string) returns Person
  return Person(value = value)
end function

/// Lifecycle states for a person.
enum PersonState
  /// The person is active.
  Active = 1
  /// The person is archived.
  Archived = 2
end enum
