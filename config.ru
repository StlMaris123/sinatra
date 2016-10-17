MyApp = proc do |env|
  [200, {'Content-Type' => 'text/plain'}, ['ok']]
end
class MyMiddleWare
  def initialize(app)
    @pp = app
  end

  def call(env)

    if env['PATH-INFO'] == '/'
      @app.call(env)
    else
      [404, {'Content-Type' => 'text/plain'}, ['not ok']]
    end
  end
end
#this is the actaul configuration
use MyMiddleWare
run MyApp
