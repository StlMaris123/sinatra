require "sinatra/base"
class MyApp < Sinatra::Base; end
MyApp.get '/' do
  "Hello from my app"
end
