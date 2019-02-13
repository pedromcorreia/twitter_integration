defmodule TwitterIntegration do
  @moduledoc """
  Documentation for TwitterIntegration.
  """

  @url Application.get_env(:twitter_integration, :url)
  @auth Application.get_env(:twitter_integration, :auth)
  @url_twitter ~s(https://twitter.com/)

  def run(route \\ :most_relevants) do
    headers = [Username: @auth, Accept: "Application/json; Charset=utf-8"]
    case HTTPoison.get(@url, headers) do
      {:ok, response} ->
        response
        |> parse_body()
        |> build_export_tweets(route)
      {:error, %HTTPoison.Error{id: nil, reason: :nxdomain}} ->
        {:error, %HTTPoison.Error{id: nil, reason: :nxdomain}}
    end
  end

  def parse_body(%HTTPoison.Response{body: body}) do
    body
    |> Poison.decode!()
    |> Map.get("statuses")
    |> Enum.filter(&(Map.get(&1, "in_reply_to_user_id") != 42))
    |> Enum.filter(&(not is_nil(user_mentions(&1))))
    |> Enum.sort_by(
      &{&1 |> Map.get("user") |> Map.get("followers_count"),
        Map.get(&1, "retweet_count"),
        Map.get(&1, "favorite_count")}
    )
  end

  def user_mentions(tweet) do
    tweet
    |> Map.get("entities")
    |> Map.get("user_mentions")
    |> Enum.find(&(Map.get(&1, "id") == 42))
  end

  def build_export_tweets(tweets, :most_relevants) when is_list(tweets) do
    Enum.map(tweets, &build_export_tweet(&1))
  end

  def build_export_tweets(tweets, :most_mentions) when is_list(tweets) do
    tweets
    |> Enum.map(&build_export_tweet(&1))
    |> Enum.group_by(& &1.screen_name)
    |> Map.to_list()
  end

  def build_export_tweet(
    %{
      "user" => %{"screen_name" => screen_name, "followers_count" => followers_count},
      "id" => id,
      "created_at" => created_at,
      "text" => text,
      "favorite_count" => favorite_count,
      "retweet_count" => retweet_count
    } = tweet
  )
  when is_map(tweet) do
    %{
      screen_name: screen_name,
      followers_count: followers_count,
      retweet_count: retweet_count,
      favorite_count: favorite_count,
      text: text,
      created_at: created_at,
      profile_url: @url_twitter <> screen_name,
      tweet_url: @url_twitter <> screen_name <> "/status/#{id}"
    }
  end
end
