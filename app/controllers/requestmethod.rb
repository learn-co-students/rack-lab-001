class RequestMethod

    def initialize(app)
    @app = app
  end

   def call(env)
    response_body = "GET"
    @app.call(response_body)
    end

end