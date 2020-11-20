# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_liveview_light_controller,
  ecto_repos: [PhxLiveviewLightController.Repo]

# Configures the endpoint
config :phx_liveview_light_controller, PhxLiveviewLightControllerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PYC1/LpDbyW1cIUWatdF4tJWvXpONrS4456az6InQ+5VcCDhWlI3hf1QzKMR88CT",
  render_errors: [view: PhxLiveviewLightControllerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxLiveviewLightController.PubSub,
  live_view: [signing_salt: "edjneuhm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
