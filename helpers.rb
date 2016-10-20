require 'sinatra/base'
require 'date'

module MyHelpers
  def time
    Time.now.to_s
  end
end

class MyApplication < Sinatra::Base
  helpers MyApplication

  helpers do
    def date
      Date.today.to_s
    end
  end

  get('/') {" its #{time}\n"}
  get('today') { "today is #{date}\n" }

  run!
end
