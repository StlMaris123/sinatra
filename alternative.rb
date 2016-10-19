require 'sinatra'
get '/' do
  halt [418, "I'm a tea po!"]
  "You will never get here!"
end
