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
#endif
