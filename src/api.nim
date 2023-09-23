import prologue, types

proc idx*(ctx: Context) {.async, gcsafe.} =
  resp "<h1>Isari (漁り)</h1>\nDetect unoficial sites that may be a phishing attack"

proc check*(ctx: Context) {.async, gcsafe.} =
  let body = ctx.request.body