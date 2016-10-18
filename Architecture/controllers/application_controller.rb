class ApplicationController < Sinatra::Base
  helpers ApplicationHelper


  set :views, File.expand_path('../../views', _FILE_)

  #dont enable logging when running tests
  configure :production, :development do
    enable :logging
  end

  #will be used to display 404 error pages
  not_found do
    title 'Not Found!'
    erb :not_found
  end
end
