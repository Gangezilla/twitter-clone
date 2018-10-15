# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :twitterclone,
  ecto_repos: [Twitterclone.Repo]

# Configures the endpoint
config :twitterclone, TwittercloneWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SHuk+H+8h5NCxrwtpjQTR7ApZ5HGKbffniSS5ZRsCgcNbvgPg7xoFwa6oqgR4Mv5",
  render_errors: [view: TwittercloneWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Twitterclone.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
