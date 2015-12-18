class AreYouLost
  def initialize(app)
    @app = app
  end

  def call(env)
    request = Rack::Request.new(env)
    status, headers, response = @app.call(env)
    if request.path == '/about'
      body = "<h1><a href='/'>Are you lost?</a></h1>"
    else
      body = response.first
    end
    [status, headers, [body]]
  end
end