# Package

version       = "0.1.0"
author        = "Luke"
description   = "Detect unoficial sites that may be a phishing attack"
license       = "GPL-3.0-or-later"
srcDir        = "src"
binDir        = "bin"
bin           = @["isari"]


# Dependencies

requires "nim >= 1.4.8", "prologue"
