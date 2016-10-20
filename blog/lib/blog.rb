require 'sinatra/base'
class Blog < Sinatra::Base
  set :root, File.expand_path('../../', _FILE_)
end
