require 'pry'
require 'erb'

class ErbMaker
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    simple_template = "text"
    renderer = ERB.new(simple_template)
    output = renderer.result()
    response_body = response.first + " - " + output + ' - <body>'
    [status, headers, [response_body]]
  end
end