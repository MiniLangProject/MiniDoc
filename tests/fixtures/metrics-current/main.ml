/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Exercises conditional assembly in field and array writes.

package sample.metrics

/// Stores an integer for field-assignment metric checks.
struct Box
  /// Value written by the field-store fixture.
  value as int,
end struct

/// Stores a conditional assembly result in a struct field.
/// @param value Integer to classify.
/// @returns One for a nonzero value, otherwise zero.
function fieldStore(value as int) returns int
  box = Box(0)
  box.value = asm x64(in value as int) returns int
    cmp value, 0
    je zero
    mov result, 1
    jmp done
    label zero
    mov result, 0
    label done
  end asm
  return box.value
end function

/// Stores a conditional assembly result in an array element.
/// @param value Integer to classify.
/// @returns One for a nonzero value, otherwise zero.
function indexStore(value as int) returns int
  values = [0]
  values[0] = asm x64(in value as int) returns int
    cmp value, 0
    je zero
    mov result, 1
    jmp done
    label zero
    mov result, 0
    label done
  end asm
  return values[0]
end function

/// Selects an array index through conditional assembly before storing a value.
/// @param value Integer selecting the destination element.
/// @returns The stored element selected by the same condition.
function indexOperand(value as int) returns int
  values = [0, 0]
  values[asm x64(in value as int) returns int
    cmp value, 0
    je zero
    mov result, 1
    jmp done
    label zero
    mov result, 0
    label done
  end asm] = 1
  return values[0] + values[1]
end function
