require "sinatra/base"
class MyApp < Sinatra::Base
  get '/' do
    "Hello from the oyher side"
  end
  # $0 is the executed file
  # _FILE_ is the current file
  run! if _FILE_ == $0

end
