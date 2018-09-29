# Package

version       = "0.0.0"
author        = "Nelson Crosby"
description   = "Desktop remote control"
license       = "BSD2"
srcDir        = "src"
binDir        = "build"
bin           = @[ "miho_driver" ]

# Dependencies
requires "nim >= 0.18.0"


task buildLib, "build libraries":
  let command = "compile --app:lib src/miho.nim"
  if selfExe() == nil:
    exec "nim " & command
  else:
    selfExec command