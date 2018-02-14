require_relative 'config/environment'
require_relative './app/application'
require_relative './app/controllers/server_port'

use AboutController
use ErbMaker
use RandomNumber
use RequestMethod
use ServerPort
run Application.new