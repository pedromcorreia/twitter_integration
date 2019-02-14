defmodule TwitterIntegrationWeb.PageControllerTest do
  use TwitterIntegrationWeb.ConnCase

  test "GET /most_mentions", %{conn: conn} do
    conn = get(conn, "/most_mentions")
    assert html_response(conn, 200) =~ "most mentions"
  end

  test "GET /most_relevants", %{conn: conn} do
    conn = get(conn, "/most_relevants")
    assert html_response(conn, 200) =~ "most relevants"
  end
end
