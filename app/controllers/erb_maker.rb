class ErbMaker
  def initialize(app)
    @app = app
  end

  def call(env)
    html = File.open('lib/templates/template.html.erb', 'r').read
    template = ERB.new(html)
    result = template.result(binding)
    status, headers, response = @app.call(env)
    body = response.first + result
    [status, headers, [body]]
  end
end