defmodule TwitterIntegration.Fixtures do
  def build_decoded() do
    build(:request) |> Map.get(:body) |> Poison.decode!()
  end

  def build(:request) do
    %HTTPoison.Response{
      body:
      "{\"statuses\":[{\"user\":{\"verified\":false,\"screen_name\":\"locaweb\",\"utc_offset\":-28800,\"statuses_count\":579,\"show_all_inline_media\":false,\"protected\":false,\"profile_text_color\":\"333333\",\"profile_sidebar_fill_color\":\"DDEEF6\",\"profile_sidebar_border_color\":\"C0DEED\",\"profile_link_color\":\"0084B4\",\"profile_image_url\":\"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg\",\"profile_background_image_url_https\":\"https://si0.twimg.com/images/themes/theme1/bg.png\",\"profile_background_image_url\":\"http://a0.twimg.com/images/themes/theme1/bg.png\",\"profile_background_color\":\"C0DEED\",\"notifications\":null,\"name\":\"Kovacek Joaquin\",\"location\":\"LA, CA\",\"listed_count\":2,\"lang\":\"en\",\"is_translator\":false,\"id_str\":\"321423\",\"id\":321423,\"friends_count\":257,\"following\":null,\"followers_count\":257,\"default_profile\":true,\"created_at\":\"Mon Apr 26 06:01:55 +0000 2010\",\"contributors_enabled\":false},\"truncated\":false,\"text\":\"The TCP program is down, transmit the solid state program so we can co @locaweb \",\"source\":\"web\",\"retweeted\":true,\"retweet_count\":1,\"place\":null,\"metadata\":{\"result_type\":\"recent\",\"iso_language_code\":\"pt\"},\"in_reply_to_user_id_str\":\"111979\",\"in_reply_to_user_id\":111979,\"in_reply_to_status_id_str\":\"26302\",\"in_reply_to_status_id\":26302,\"in_reply_to_screen_name\":\"schimmel_tessie\",\"id_str\":\"591659\",\"id\":591659,\"geo\":null,\"favorited\":true,\"favorite_count\":26,\"entities\":{\"user_mentions\":[{\"screen_name\":\"locaweb\",\"name\":\"Locaweb\",\"indices\":[71,79],\"id_str\":\"42\",\"id\":42}],\"urls\":[],\"hashtags\":[]},\"created_at\":\"Mon Sep 24 03:35:21 +0000 2012\",\"coordinates\":null,\"contributors\":null},{\"user\":{\"verified\":false,\"screen_name\":\"locaweb\",\"utc_offset\":-28800,\"statuses_count\":579,\"show_all_inline_media\":false,\"protected\":false,\"profile_text_color\":\"333333\",\"profile_sidebar_fill_color\":\"DDEEF6\",\"profile_sidebar_border_color\":\"C0DEED\",\"profile_link_color\":\"0084B4\",\"profile_image_url\":\"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg\",\"profile_background_image_url_https\":\"https://si0.twimg.com/images/themes/theme1/bg.png\",\"profile_background_image_url\":\"http://a0.twimg.com/images/themes/theme1/bg.png\",\"profile_background_color\":\"C0DEED\",\"name\":\"Gus Nikolaus Mr\",\"location\":\"LA, CA\",\"listed_count\":2,\"lang\":\"en\",\"is_translator\":false,\"id_str\":\"419334\",\"id\":419334,\"friends_count\":412,\"following\":null,\"followers_count\":412,\"default_profile\":true,\"created_at\":\"Mon Apr 26 06:01:55 +0000 2010\",\"contributors_enabled\":false},\"truncated\":false,\"text\":\"We nee @locaweb the back-end JSON bus!\",\"source\":\"web\",\"retweeted\":false,\"retweet_count\":0,\"place\":null,\"metadata\":{\"result_type\":\"recent\",\"iso_language_code\":\"pt\"},\"in_reply_to_user_id_str\":\"398343\",\"in_reply_to_user_id\":398343,\"in_reply_to_status_id_str\":\"613293\",\"in_reply_to_status_id\":613293,\"in_reply_to_screen_name\":\"mara_denesik\",\"id_str\":\"705094\",\"id\":705094,\"geo\":null,\"favorited\":false,\"favorite_count\":0,\"entities\":{\"user_mentions\":[{\"screen_name\":\"locaweb\",\"name\":\"Locaweb\",\"indices\":[7,15],\"id_str\":\"42\",\"id\":42}],\"urls\":[],\"hashtags\":[]},\"created_at\":\"Mon Sep 24 03:35:21 +0000 2012\",\"coordinates\":null,\"contributors\":null}]}",
      headers: [
        {"Content-Type", "application/json"},
        {"Access-Control-Allow-Origin", "*"},
        {"Access-Control-Allow-Methods", "GET"},
        {"Access-Control-Allow-Headers", "Username"},
        {"Transfer-Encoding", "chunked"},
        {"Server", "WEBrick/1.3.1 (Ruby/2.3.3/2016-11-21)"},
        {"Date", "Wed, 13 Feb 2019 23:07:21 GMT"}
      ],
      request: %HTTPoison.Request{
        body: "",
        headers: [
          Username: "pedmcor@gmail.com",
          Accept: "Application/json; Charset=utf-8"
        ],
        method: :get,
        options: [],
        params: %{},
        url: "http://tweeps.locaweb.com.br/tweeps"
      },
      request_url: "http://tweeps.locaweb.com.br/tweeps",
      status_code: 200
    }
  end
end
