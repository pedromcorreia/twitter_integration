defmodule TwitterIntegration do
  use TwitterIntegrationWeb.ConnCase

  test "parse_body" do
    body = ""
    TwitterIntegration.parse_body(%HTTPoison.Response{body: body})
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "user_mentions" do
    tweet = ""
    TwitterIntegration.user_mentions(tweet)
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "build_export_tweets most_relevants" do
    tweets = ""
    TwitterIntegration.build_export_tweets(tweets, :most_relevants)
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "build_export_tweets most_mentions" do
    tweets = ""
    TwitterIntegration.build_export_tweets(tweets, :most_mentions)
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end

  test "build_export_tweet" do
    tweet = ""
    TwitterIntegration.build_export_tweet(tweet)
    assert html_response(conn, 200) =~ "Welcome to Phoenix!"
  end
end
