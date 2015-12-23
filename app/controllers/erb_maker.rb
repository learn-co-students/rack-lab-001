class ErbMaker

  def initialize (app)
    @app = app
  end

  def call(env)
  template = ERB.new <<-EOF
  <html>
  <body></body>
  </html>
  EOF
  result = template.result(binding)
  status, headers, response = @app.call(env)
   
   if env["PATH_INFO"] == '/about'
      response_body = "<h1><a href='/'>Are you lost?</a></h1>"

   else
      response_body = response.first + result
   end
  
  
  [status, headers, [response_body]]
  end

end