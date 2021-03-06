defmodule TwitterIntegrationWeb.Router do
  use TwitterIntegrationWeb, :router

  pipeline :browser do
    plug(:accepts, ["html"])
    plug(:fetch_session)
    plug(:fetch_flash)
    plug(:protect_from_forgery)
    plug(:put_secure_browser_headers)
  end

  scope "/", TwitterIntegrationWeb do
    # Use the default browser stack
    pipe_through(:browser)

    get("/most_relevants", PageController, :most_relevants)
    get("/most_mentions", PageController, :most_mentions)
  end
end
