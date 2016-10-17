require 'sinatra'
require 'rack'
#A handy middleware thst ships with Rack
#and sets the X-Runtime header
use Rack::Runtime
get('/') {'Hello World!'}
