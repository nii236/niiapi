# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :niiapi,
  ecto_repos: [NiiAPI.Repo]

# Configures the endpoint
config :niiapi, NiiAPI.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sS3+mqu/ZexhDvjWVC3vtoDzTdnKyQb/lTNRkS8y45z6dJXhH4bq5KuReyt8PPYZ",
  render_errors: [view: NiiAPI.ErrorView, accepts: ~w(json)],
  pubsub: [name: NiiAPI.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
