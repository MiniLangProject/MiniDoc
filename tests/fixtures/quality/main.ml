/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Documentation quality diagnostics fixture.

package sample.quality

/// Provide widget behavior for the active subsystem.
function generic(value as int) returns int
  return value
end function

/// Returns a fixture marker.
function duplicateAlpha() returns int
  return 1
end function

/// Returns a fixture marker.
function duplicateBeta() returns int
  return 2
end function

/// Returns a fixture marker.
function duplicateGamma() returns int
  return 3
end function

/// Exercises invalid test metadata diagnostics.
/// @testmethod
/// @timeout soon
function invalidTestCallback(value) returns int
  return value
end function

/// Exercises orphan test metadata diagnostics.
/// @category unit
function orphanTestMetadata()
end function

/// Carries conflicting fixture roles for diagnostics.
/// @beforeall
/// @afterall
function conflictingFixtureRoles()
end function

/// First duplicate suite fixture.
/// @beforeeach
function firstBeforeEach()
end function

/// Second duplicate suite fixture.
/// @beforeeach
function secondBeforeEach()
end function

/// Async functions return jobs instead of completing in the runner call.
/// @testmethod invalid async test
async function invalidAsyncTest()
end function

/// Holds invalid instance-method and empty-value metadata.
struct InvalidTestCases
  /// Cannot be discovered because instance construction is implicit.
  /// @testmethod
  /// @category
  function instanceTest()
  end function
end struct
