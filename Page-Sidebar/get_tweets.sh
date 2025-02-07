#!/bin/bash


curl 'https://x.com/i/api/graphql/H_dAKg97dSn3FOMfrNS8nw/ListLatestTweetsTimeline?variables=%7B%22listId%22%3A%221824257226061779309%22%2C%22count%22%3A100%7D&bled%22%3Atrue%2C%22articles_preview_enabled%22%3Atrue%2C%22responsive_web_edit_tweet_api_enabled%22%3Atrue%2C%22graphql_is_translatable_rweb_tweet_is_translatable_enabled%22%3Atrue%2C%22view_counts_everywhere_api_enabled%22%3Atrue%2C%22longform_notetweets_consumption_enabled%22%3Atrue%2C%22responsive_web_twitter_article_tweet_consumption_enabled%22%3Atrue%2C%22tweet_awards_web_tipping_enabled%22%3Afalse%2C%22responsive_web_grok_analysis_button_from_backend%22%3Atrue%2C%22creator_subscriptions_quote_tweet_preview_enabled%22%3Afalse%2C%22freedom_of_speech_not_reach_fetch_enabled%22%3Atrue%2C%22standardized_nudges_misinfo%22%3Atrue%2C%22tweet_with_visibility_results_prefer_gql_limited_actions_policy_enabled%22%3Atrue%2C%22rweb_video_timestamps_enabled%22%3Atrue%2C%22longform_notetweets_rich_text_read_enabled%22%3Atrue%2C%22longform_notetweets_inline_media_enabled%22%3Atrue%2C%22responsive_web_grok_image_annotation_enabled%22%3Atrue%2C%22responsive_web_enhance_cards_enabled%22%3Afalse%7D' -H 'authority: x.com' -H 'accept: */*' -H 'accept-language: en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7,zh-TW;q=0.6,ja;q=0.5,mt;q=0.4' -H 'authorization: Bearer AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA' -H 'cache-control: no-cache' -H 'content-type: application/json' -H 'cookie: lang=en; guest_id=v1%3A170493242171306260; night_mode=2; guest_id_marketing=v1%3A170493242171306260; guest_id_ads=v1%3A170493242171306260; kdt=advTZ1eQQ5xxcRXFRwp8YVwHNDlLj05GG0M5i5yc; gt=1887725774305923106; auth_token=d4d0ad17bfc115082c70547a3a557a7cebbe2488; ct0=16e4ba9fa46936fa4acb66b309d4fc5e7d8060f31ff3158641e49a09634f34616ff56d379b60b159166e27a40fc417c7640e5256fe4652755545635449c98d321b3d83936afe89b91781fe1bce51246d; att=1-gE5fd2zigHLNe1OCHofUNuoPLE4yEIdEyILMjplR; lang=en; twid=u%3D1635238116465451008; personalization_id="v1_OKK1kmXAlO6Y7sR/8B0naA=="' -H 'pragma: no-cache' -H 'referer: https://x.com/home' -H 'sec-ch-ua: "Not_A Brand";v="8", "Chromium";v="120", "Google Chrome";v="120"' -H 'sec-ch-ua-mobile: ?0' -H 'sec-ch-ua-platform: "macOS"' -H 'sec-fetch-dest: empty' -H 'sec-fetch-mode: cors' -H 'sec-fetch-site: same-origin' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36' -H 'x-client-transaction-id: dev9kLoggz+LVtzCkmRjoSFCCu9obSxw5RYpd5VoIfVjUPFiElGi971CDCtMqjgr9OpBI3arb2EKnU15CyGhupKyiyPedg' -H 'x-csrf-token: 16e4ba9fa46936fa4acb66b309d4fc5e7d8060f31ff3158641e49a09634f34616ff56d379b60b159166e27a40fc417c7640e5256fe4652755545635449c98d321b3d83936afe89b91781fe1bce51246d' -H 'x-twitter-active-user: yes' -H 'x-twitter-auth-type: OAuth2Session' -H 'x-twitter-client-language: en' --compressed -s | \
 jq -r '
  .. |
  if type == "object" then
    to_entries[] |
    if .key == "full_text" or .key == "screen_name" then
      "\(.key) : \(.value)"
    else
      empty
    end
  else
    empty
  end
' | \
{
  echo "analyze and summarise the following content (focus on the meaningful content, ignore navigation info/ads/recommended info):"
  cat  # Append the jq output to the analysis prompt
} | pbcopy
