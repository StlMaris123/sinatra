require 'sinatra'
get '/' do
  halt [418, "i'm a tea pot"]
  "you will never get here"
end

