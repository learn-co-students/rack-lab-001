class Application
  def initialize
    puts 'Application Initialized'
  end

  def call(env)
    [200, {'Content-Type' => 'text/html'}, ['msg = ']]
  end
end
