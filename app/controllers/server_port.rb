class ServerPort
  def initialize(app)
    @app = app
  end

   def call(env)
    request = Rack::Request.new(env)
    status, headers, response = @app.call(env)
    body = response.first + request.port.to_s
    status = 200
    [status, headers, [body]]
  end
end