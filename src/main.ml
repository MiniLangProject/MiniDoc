/*
Copyright 2026 Nils Kopal

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
*/

//! Starts the MiniDoc command-line application.

import minidoc.app as app

/// Runs MiniDoc with the supplied command-line arguments.
/// @param args Arguments passed by the host process.
/// @since 0.1.0
function main(args)
  return app.run(args)
end function
