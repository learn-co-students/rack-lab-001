require 'pry'
require 'erb'

class AboutController
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    if env["PATH_INFO"] == "/about"
      response_body = "<h1><a href='/'>Are you lost?</a></h1>"
    else
      response_body = response.first
    end
      
    [status, headers, [response_body]]
  end
end