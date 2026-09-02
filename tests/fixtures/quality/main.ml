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
