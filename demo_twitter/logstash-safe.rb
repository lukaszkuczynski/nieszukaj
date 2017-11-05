input {
  twitter {
    "consumer_key" => "your_consumer_key"
    "consumer_secret" => "your_consumer_secret"
    "oauth_token" => "oauth_token_of_yours"
    "oauth_token_secret" => "oauth_token_secret_of_yours"
    "keywords" => ["java", "python"]
  }
}

output {
#  stdout { codec => rubydebug }
  elasticsearch {}
}
