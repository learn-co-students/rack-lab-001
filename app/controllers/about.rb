class About

  def initialize(app)
    @app = app
  end

  
  def call(env)
    template = ERB.new("<h1><a href='/'>Are you lost?</a></h1>")
    html = template.result binding
    @app.call(html)
  end

end
