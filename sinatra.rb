require 'sinatra/base'

module Sinatra
  module PostGet
    def post_get(route, &block)
      get(route, &block)
      post(route, &block)
    end
  end

  #register it via sinatra base
  register PostGet

  module LinkHelper
    def link(name)
      case name
      when :about then '/about'
      when :index then '/index'
      else "/page/#{name}"
      end
    end
    helpers LinkHelper
  end

end
