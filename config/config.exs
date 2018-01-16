use Mix.Config
config :clicky,
  base_url: "https://api.clicky.com/api/stats/4"

import_config "#{Mix.env}.exs"
