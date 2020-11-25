# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :membership,
  ecto_repos: [Membership.Repo]

# Configures the endpoint
config :membership, MembershipWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Oigm58tRoANq8WosMHs5vmiH2/RINeBQoW10za6y0L6YMt46eNxB6kopXLsSlfqx",
  render_errors: [view: MembershipWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Membership.PubSub,
  live_view: [signing_salt: "mPfN//bm"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
