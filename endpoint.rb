require 'sinatra'
class Foo < Sinatra::Base
  get('/foo') {'foo'}
end
class Bar < Sinatra::Base
  get('base') {'bar'}

  use Foo
  run!
end
