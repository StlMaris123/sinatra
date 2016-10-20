require 'sinatra'

MyApp = proc { [200, {'Content-Type' => 'text/plain'}, ['ok']] }
get('/', &MyApp)
