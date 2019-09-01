use Mix.Config
config :fa, File, File
config :fa, Path, Path

# You can also configure a 3rd-party app:
#
#     config :logger, level: :info

import_config "#{Mix.env()}.exs"
