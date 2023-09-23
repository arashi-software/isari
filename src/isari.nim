import prologue
#import prologue/middlewares/staticfile

import routes

let
  env = loadPrologueEnv(".env")
  settings = newSettings(appName = env.getOrDefault("NAME", "Isari"),
                         debug = env.getOrDefault("DEBUG", true),
                         port = Port(env.getOrDefault("PORT", 1313)),
    )

var app = newApp(settings = settings)
#app.use(staticFileMiddleware(env.get("STATIC_DIR")))
app.addRoute(routes.urlPatterns, "")
app.run()

