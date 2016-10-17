require 'sinatra/base'
module MyExtension
  module Helpers
    #helper method goes here
  end

  #extension method goes here

  def self.registered(app)
    app.helpers Helpers
  end
end

Sinatra.register MyExtension
