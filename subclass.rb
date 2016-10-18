require "sinatra/base"
class MyApp < Sinatra::Base
  get '/' do
    "Hello from the oyher side"
  end
end
