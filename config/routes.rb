class Routes
  def initialize(app)
    @app = app
  end

  def call(env)
    if(env['PATH_INFO'] == '/about') 
      About.new(@app).call(env)
    else
      e = ErbMaker.new(@app)
      e.call(env)
    end
  end
end