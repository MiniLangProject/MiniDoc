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
  /// The value is the person's raw name.
  value as string

  /// Returns the person's raw name.
  /// @returns The raw name.
  function name() returns string
    return this.value
  end function
end struct

/// A numeric value used to exercise documented operator overloads.
struct Score
  /// The wrapped score value.
  value as int

  /// Adds two scores.
  /// @param left The left score.
  /// @param right The right score.
  /// @returns A score containing the sum.
  operator inline +(left as Score, right as Score) returns Score
    return Score(value = left.value + right.value)
  end operator

  /// Adds a scalar value to a score.
  /// @param left The score to adjust.
  /// @param amount The scalar amount to add.
  /// @returns A score containing the adjusted value.
  operator +(left as Score, amount as int) returns Score
    return Score(value = left.value + amount)
  end operator

  /// Returns a score unchanged.
  /// @param value The score to preserve.
  /// @returns The original score.
  operator +(value as Score) returns Score
    return value
  end operator

  /// Negates a score.
  /// @param value The score to negate.
  /// @returns A score containing the negated value.
  operator -(value as Score) returns Score
    return Score(value = -value.value)
  end operator
end struct

/// Creates a person.
/// @param value The person's raw name.
/// @returns A new person.
function createPerson(value as string) returns Person
  return Person(value = value)
end function

/// Lifecycle states for a person.
enum PersonState
  /// Active marks a person that can be displayed.
  Active = 1
  /// Archived marks a person that is no longer active.
  Archived = 2
end enum
