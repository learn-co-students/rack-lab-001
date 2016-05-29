class RandomNumber
    def initialize(app)
        @app = app
    end
    
    def call(env)
        status, headers, response = @app.call(env)
        response_body = response.first + rand(100).to_s
        
        [status, headers, [response_body]]
    end
end