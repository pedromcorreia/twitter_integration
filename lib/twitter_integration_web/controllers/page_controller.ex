defmodule TwitterIntegrationWeb.PageController do
  use TwitterIntegrationWeb, :controller

  def most_relevants(conn, _params) do
    tweets = TwitterIntegration.run(:most_relevants)
    case is_list(tweets) do
      true -> render(conn, "most_relevants.html", tweets: tweets)
      _ -> render(conn, "error.html")
    end
  end

  def most_mentions(conn, _params) do
    tweets = TwitterIntegration.run(:most_mentions)
    case is_list(tweets) do
      true -> render(conn, "most_relevants.html", tweets: tweets)
      _ -> render(conn, "error.html")
    end
    render(conn, "most_mentions.html", tweets: tweets)
  end
end
