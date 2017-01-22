class ErbMaker

  def initialize(app)
    @app = app
  end

  def call(env)
    name = "hello"
    request = RequestMethod.new(@app).call(env)
    serverport = ServerPort.new(@app).call(env)
    random_num = RandomNumber.new(@app).call(env)

    template = ERB.new("<html> <body> <%= request %> <%= serverport %> <%= random_num %> ")
    html = template.result binding
    @app.call(html)
  end

end
