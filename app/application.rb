require 'pry'

class Application
  def call(env)
    output = "<html>"    
    [200, {'Content-Type' => 'text/html'}, [output]]
  end
end