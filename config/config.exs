use Mix.Config
config :ja, File, File
config :ja, Path, Path

# You can also configure a 3rd-party app:
#
#     config :logger, level: :info

import_config "#{Mix.env()}.exs"
