defmodule TwitterIntegrationWeb.PageController do
  use TwitterIntegrationWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
