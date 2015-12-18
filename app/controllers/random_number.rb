class RandomNumber
  def initialize(app)
    @app = app
  end

   def call(env)
    status, headers, response = @app.call(env)
    body = response.first + rand(0..10).to_s.prepend(' - ')
    [status, headers, [body]]
  end
end