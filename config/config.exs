# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :twitter_integration, TwitterIntegrationWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "mQpgmEXrrWXr26zsXyYCS5FtHtOu0fAqqsacqyac9NZ0LpCI2Z7mlaX10g6rLClL",
  render_errors: [view: TwitterIntegrationWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TwitterIntegration.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
config :twitter_integration,
  url: "http://tweeps.locaweb.com.br/tweeps",
  auth: "pedmcor@gmail.com"
