defmodule TwitterIntegrationWeb.Router do
  use TwitterIntegrationWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", TwitterIntegrationWeb do
    pipe_through :browser # Use the default browser stack

    get "/most_relevants", PageController, :most_relevants
    get "/most_mentions", PageController, :most_mentions
  end
end
