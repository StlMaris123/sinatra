require 'sinatra'
set :title, "My Website"
#config lets one specify env dependent options
configure :development, :test do
  enable :admin_access
end

if settings.admin_access?
  get('/admin') {'welcome to the admin area'}
end

get '/' do
  "<h1>#{ settings.title }</h1>"
end
