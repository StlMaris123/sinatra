require './handle_request'
run Rack::Cascade.new [Foo, Bar]

