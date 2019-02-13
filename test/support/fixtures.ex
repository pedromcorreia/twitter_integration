defmodule Test.Fixtures do
  %HTTPoison.Response{
    body: "{\"statuses\":[{\"coordinates\":null,\"favorited\":true,\"truncated\":false,\"created_at\":\"Mon Sep 24 03:35:21 +0000 2012\",\"id_str\":\"622559\",\"entities\":{\"urls\":[],\"hashtags\":[],\"user_mentions\":[{\"screen_name\":\"bashirian_jaron\",\"name\":\"Bashirian Jaron\",\"id\":260882,\"id_str\":\"260882\",\"indices\":[34,50]}]},\"in_reply_to_user_id_str\":\"\",\"contributors\":null,\"text\":\"Try to copy the RAM bus, maybe it @bashirian_jaron \",\"metadata\":{\"iso_language_code\":\"pt\",\"result_type\":\"recent\"},\"retweet_count\":0,\"in_reply_to_status_id_str\":\"\",\"id\":622559,\"geo\":null,\"retweeted\":false,\"in_reply_to_user_id\":null,\"place\":null,\"favorite_count\":365,\"user\":{\"profile_sidebar_fill_color\":\"DDEEF6\",\"profile_sidebar_border_color\":\"C0DEED\",\"profile_background_tile\":false,\"name\":\"Mcglynn Jacey\",\"profile_image_url\":\"http://a0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg\",\"created_at\":\"Mon Apr 26 06:01:55 +0000 2010\",\"location\":\"LA, CA\",\"follow_request_sent\":null,\"profile_link_color\":\"0084B4\",\"is_translator\":false,\"id_str\":\"390585\",\"entities\":{\"url\":{\"urls\":[{\"expanded_url\":null,\"url\":\"\",\"indices\":[0,0]}]},\"description\":{\"urls\":[]}},\"default_profile\":true,\"contributors_enabled\":false,\"favourites_count\":42,\"url\":null,\"profile_image_url_https\":\"https://si0.twimg.com/profile_images/2359746665/1v6zfgqo8g0d3mk7ii5s_normal.jpeg\",\"utc_offset\":-28800,\"id\":390585,\"profile_use_background_image\":true,\"listed_count\":2,\"profile_text_color\":\"333333\",\"lang\":\"en\",\"followers_count\":495,\"protected\":false,\"notifications\":null,\"profile_background_image_url_https\":\"https://si0.twimg.com/images/themes/theme1/bg.png\",\"profile_background_color\":\"C0DEED\",\"verified\":false,\"geo_enabled\":true,\"time_zone\":\"Pacific Time (US & Canada)\",\"description\":\"Born 330 Live 310\",\"default_profile_image\":false,\"profile_background_image_url\":\"http://a0.twimg.com/images/themes/theme1/bg.png\",\"statuses_count\":579,\"friends_count\":495,\"following\":null,\"show_all_inline_media\":false,\"screen_name\":\"mcglynn_jacey\"},\"in_reply_to_screen_name\":\"\",\"source\":\"web\",\"in_reply_to_status_id\":null}]}",
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
