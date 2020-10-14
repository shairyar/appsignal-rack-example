require 'config'
require 'rack'
handler = Rack::Handler::Thin
class HelloWorld
  def call(env)
    [200, {"Content-Type" => "text/plain"}, "Hello from Rack Example"]
  end
end
handler.run HelloWorld.new
