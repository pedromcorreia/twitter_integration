defmodule TwitterIntegrationWeb.PageController do
  use TwitterIntegrationWeb, :controller

  def index(conn, _params) do
    tweets = TwitterIntegration.run()
    render conn, "index.html", tweets: tweets
  end

  def most_relevants(conn, _params) do
    tweets = TwitterIntegration.run()
    render conn, "index.html", tweets: tweets
  end

  def most_mentions(conn, _params) do
    tweets = TwitterIntegration.run()
    render conn, "index.html", tweets: tweets
  end
end
