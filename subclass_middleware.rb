require 'sinatra/base'

class ApplicationController < Sinatra::Base
  def self.inherited(subclass)
    super
    use subclass
  end

  enable :loggig
end

class ExampleController < Sinatra::Base
  get('example') { "Example!" }
end

#works with dynamically generated applications too
Sinatra.new ApplicationController do
  get '/' do
    "see the <a href='/example'>example</a"
  end
end

ApplicationController.run!

