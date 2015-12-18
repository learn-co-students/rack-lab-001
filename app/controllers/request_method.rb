class RequestMethod
  def initialize(app)
    @app = app
  end

   def call(env)
    request = Rack::Request.new(env)
    status, headers, response = @app.call(env)
    body = response.first + request.request_method
    [status, headers, [body]]
  end
end