defmodule TwitterIntegration do
  @moduledoc """
  Documentation for TwitterIntegration.
  """

  @doc """
  Hello world.

  ## Examples

      iex> TwitterIntegration.hello()
      :world

  """
  def hello do
    :world
  end

  def run() do
    headers = ["Username": " pedmcor@gmail.com", "Accept": "Application/json; Charset=utf-8"]
    url = "http://tweeps.locaweb.com.br/tweeps"
    {:ok, response} = HTTPoison.get(url, headers)

    case Map.get(response, :status_code) do
      200 -> parse_body(response)
      _ -> IO.inspect "B"
    end
  end

  def parse_body(%HTTPoison.Response{body: body}) do
    body
    |> Poison.decode!()
    |> Map.get("statuses")
    |> Enum.filter(& Map.get(&1, "in_reply_to_user_id") != 42)
    |> Enum.filter(& not is_nil(user_mentions(&1)))
    |> Enum.map(fn tweet -> IO.inspect tweet end)
  end

  defp user_mentions(tweet) do
    tweet
    |> Map.get("entities")
    |> Map.get("user_mentions")
    |> Enum.find(& Map.get(&1, "id") == 42)
  end
end
