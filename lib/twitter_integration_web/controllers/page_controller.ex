defmodule TwitterIntegrationWeb.PageController do
  use TwitterIntegrationWeb, :controller

  def most_relevants(conn, _params) do
    tweets = TwitterIntegration.run(:most_relevants)
    render(conn, "most_relevants.html", tweets: tweets)
  end

  def most_mentions(conn, _params) do
    tweets = TwitterIntegration.run(:most_mentions)
    render(conn, "most_mentions.html", tweets: tweets)
  end
end
