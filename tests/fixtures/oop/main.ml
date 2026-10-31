/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

package sample.oop

/// Names a value.
interface Named
  /// Returns a name.
  function name() returns string
end interface

/// Adds a description to a name.
interface Described extends Named
  /// Returns a description.
  function description() returns string
end interface

/// Common object behavior.
abstract class Base implements Described
  /// Protected backing value.
  protected value as string = "base"

  /// Builds a value.
  /// @param value Initial name.
  function init(value as string = "base")
    this.value = value
  end function

  /// Returns a name.
  function name() returns string
    return this.value
  end function

  /// Must be implemented by children.
  abstract function description() returns string
end class

/// A concrete description.
final class Item extends Base
  /// Returns a description.
  override function description() returns string
    return this.value + "!"
  end function
end class
