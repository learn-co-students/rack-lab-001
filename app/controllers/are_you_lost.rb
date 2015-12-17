class AreYouLost
  def initialize(app)
    @app = app
  end

  def call(env)
    status, headers, response = @app.call(env)
    if env['PATH_INFO'] == '/about'
      body = "<h1><a href='/'>Are you lost?</a></h1>"
    else
      body = response.first
    end
    [status, headers, [body]]
  end
end