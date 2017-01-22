require 'rack'
require_relative 'config/environment'
require_relative 'app/controllers/serverport'
require_relative 'app/application'
require_relative 'config/routes'

use Routes
# use ErbMaker
run Application.new