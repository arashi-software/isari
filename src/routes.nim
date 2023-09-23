import prologue

import api

let urlPatterns* = @[
  pattern("/", api.idx),
  pattern("/check", api.check, HttpPost)
]