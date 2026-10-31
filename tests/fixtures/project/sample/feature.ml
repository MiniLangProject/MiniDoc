/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Compile-time selected fixture behavior.

package sample.feature

#if FEATURE
/// Decorates a display name.
/// @param value The name to decorate.
/// @returns The decorated name.
function decorate(value as string) returns string
  return "Hello " + value
end function

/// Classifies a value through several decision points.
/// @param value Value to classify.
/// @param enabled Enables the positive branch.
/// @returns The classification result.
function classify(value as int, enabled as bool) returns int
  if enabled and value > 10 then
    return 2
  else if value > 0 then
    return 1
  end if
  for i = 0 to 1
    value = value + i
  end for
  return value
end function

/// Classifies a runtime value as callable or non-callable.
/// @param value Runtime value to inspect.
/// @returns A stable textual kind.
function callableKind(value) returns string
  if typeof(value) == "function" then return "callable" end if
  return "other"
end function

/// Classifies a value with MiniLang 1.3.0 inline assembly.
/// @param value Value to classify.
/// @returns One for a nonzero value, otherwise zero.
function asmClassify(value as int) returns int
  return asm x64(in value as int) returns int
    cmp value, 0
    je zero
    mov result, 1
    jmp done
    label zero
    mov result, 0
    label done
  end asm
end function

/// Prepares the source-file test fixture.
/// @beforeeach
function prepareFeatureTest()
end function

/// Groups static documentation-test declarations.
struct FeatureTests
  /// Verifies the public decorator contract.
  /// @testmethod decorated display name
  /// @category unit
  /// @covers sample.feature.decorate
  /// @timeout 1000
  static function decoratedName()
  end function

  /// Documents an intentionally disabled integration case.
  /// @testmethod unavailable integration
  /// @category integration
  /// @skip external service is unavailable in the fixture
  static function unavailableIntegration()
  end function
end struct
#endif
