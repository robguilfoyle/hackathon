require 'rubygems'
require 'tweetstream'
require 'yajl'

TweetStream.configure do |config|
  config.consumer_key       = 'IIoNu4FLWbPquzIeAMzRWA'
  config.consumer_secret    = 'rdj7c85pSImjGbXNwEV73ylK1wYIVJHTDIzJOwAI'
  config.oauth_token        = '127905748-mFGXxpttdDgJRX0n0Paps3sHTehQjEkVXXZ15qXj'
  config.oauth_token_secret = 'uab1hQsXasAEyH2QX4PQp4ytHjzvKnGbDzNfRedGQ'
  config.auth_method        = :oauth
end

client = TweetStream::Client.new

client.on_error do |message|
  puts message
end

client.track("cola") do |status|
  puts "#{status.text}"
end