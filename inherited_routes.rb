require 'sinatra/base'
class GeneralApp < Sinatra::Base
  get '/about' do
    "This is a general app"
  end
end

class CustomAPP < GeneralApp
  get '/about' do
    "this is a custom app"
  end
end

# This route will also be available in CustomApp
GeneralApp.get '/' do
  "< a href='/about'> More Infos</a>"
end

CustomApp.run!

