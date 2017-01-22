class Application

   def call(body)
      [@status = 200, @header = {'Content-Type' => 'text/html'}, @body = [body]]
    end
end
