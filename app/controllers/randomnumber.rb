class RandomNumber

  def initialize(app)
    @app = app
  end

   def call(env)
      random_num = rand(1..100)
      @app.call(random_num)
    end



end
