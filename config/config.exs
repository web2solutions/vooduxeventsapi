# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :vooduxeventsapi,
  ecto_repos: [Vooduxeventsapi.Repo]

# Configures the endpoint
config :vooduxeventsapi, VooduxeventsapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ghT5O5OYrfXgKvXpxQdqgzkNf3HBSQWHqRRcSowM9Fq+A8difbmVfCmGPxdHK+t2",
  render_errors: [view: VooduxeventsapiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Vooduxeventsapi.PubSub,
  live_view: [signing_salt: "LVjK0HAu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
