class ServerPort

  def initialize(app)
    @app = app
  end

   def call(env)
      body = "80"
      @app.call(body)
    end

end