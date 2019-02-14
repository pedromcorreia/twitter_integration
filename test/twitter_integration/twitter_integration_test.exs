defmodule TwitterIntegrationTest do
  use TwitterIntegrationWeb.ConnCase
  alias TwitterIntegration
  import TwitterIntegration.Fixtures

  test "parse_body" do
    request = build(:request)
    assert response = TwitterIntegration.parse_body(request)
    first_response = List.first(response)
    assert length(response) == 2
    assert Map.get(first_response, "created_at") == "Mon Sep 24 03:35:21 +0000 2012"
    assert Map.get(first_response, "id") == 591_659
    assert Map.get(first_response, "favorite_count") == 26

    assert Map.get(first_response, "text") ==
             "The TCP program is down, transmit the solid state program so we can co @locaweb "
  end

  test "user_mentions" do
    request = build_decoded() |> Map.get("statuses") |> List.first()

    assert TwitterIntegration.user_mentions(request) == %{
             "id" => 42,
             "id_str" => "42",
             "indices" => 'GO',
             "name" => "Locaweb",
             "screen_name" => "locaweb"
           }
  end

  test "build_export_tweets most_relevants" do
    request = build_decoded() |> Map.get("statuses")

    assert TwitterIntegration.build_export_tweets(request, :most_relevants) == [
             %{
               created_at: "Mon Sep 24 03:35:21 +0000 2012",
               favorite_count: 26,
               followers_count: 257,
               profile_url: "https://twitter.com/locaweb",
               retweet_count: 1,
               screen_name: "locaweb",
               text:
                 "The TCP program is down, transmit the solid state program so we can co @locaweb ",
               tweet_url: "https://twitter.com/locaweb/status/591659"
             },
             %{
               created_at: "Mon Sep 24 03:35:21 +0000 2012",
               favorite_count: 0,
               followers_count: 412,
               profile_url: "https://twitter.com/locaweb",
               retweet_count: 0,
               screen_name: "locaweb",
               text: "We nee @locaweb the back-end JSON bus!",
               tweet_url: "https://twitter.com/locaweb/status/705094"
             }
           ]
  end

  test "build_export_tweets most_mentions" do
    request = build_decoded() |> Map.get("statuses")

    assert TwitterIntegration.build_export_tweets(request, :most_mentions) == [
             {"locaweb",
              [
                %{
                  created_at: "Mon Sep 24 03:35:21 +0000 2012",
                  favorite_count: 26,
                  followers_count: 257,
                  profile_url: "https://twitter.com/locaweb",
                  retweet_count: 1,
                  screen_name: "locaweb",
                  text:
                    "The TCP program is down, transmit the solid state program so we can co @locaweb ",
                  tweet_url: "https://twitter.com/locaweb/status/591659"
                },
                %{
                  created_at: "Mon Sep 24 03:35:21 +0000 2012",
                  favorite_count: 0,
                  followers_count: 412,
                  profile_url: "https://twitter.com/locaweb",
                  retweet_count: 0,
                  screen_name: "locaweb",
                  text: "We nee @locaweb the back-end JSON bus!",
                  tweet_url: "https://twitter.com/locaweb/status/705094"
                }
              ]}
           ]
  end

  test "build_export_tweet" do
    request = build_decoded() |> Map.get("statuses") |> List.first()

    assert TwitterIntegration.build_export_tweet(request) == %{
             created_at: "Mon Sep 24 03:35:21 +0000 2012",
             favorite_count: 26,
             followers_count: 257,
             profile_url: "https://twitter.com/locaweb",
             retweet_count: 1,
             screen_name: "locaweb",
             text:
               "The TCP program is down, transmit the solid state program so we can co @locaweb ",
             tweet_url: "https://twitter.com/locaweb/status/591659"
           }
  end
end
