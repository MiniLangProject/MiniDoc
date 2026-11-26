/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Verifies the three native targets understood by the shared compiler frontend.

package sample.targets

#if TARGET_OS == "windows"
/// Exists only in the Windows reference.
function windowsOnly()
end function
#endif

#if TARGET_OS == "linux"
/// Exists only in the Linux reference.
function linuxOnly()
end function
#endif

#if TARGET_OS == "minux"
/// Exists only in the MinUX reference.
function minuxOnly()
end function
#endif
