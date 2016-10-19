require 'sinatra/base'

class Foo < Sinatra::Base
  get('/') { "Hello from Foo!" }
end

class Bar < Sinatra::Base
  get('/') { Foo.call(env) }
end
Bar.run!

