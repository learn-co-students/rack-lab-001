class Application
  def call(env)
    if env["REQUEST_PATH"] == "/about"
      response = "<h1><a href='/'>Are you lost?</a></h1>"
    else
      response = ""
    end
    [200, {"Content-Type" => "text/html"}, [response]]
  end

end