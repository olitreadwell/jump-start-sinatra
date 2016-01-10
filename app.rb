#REQUIREMENTS
require 'sinatra'
require_relative "gem_requirements"

#CONFIGURATION
require_relative 'config'

before do
  set_title
end

#ROUTES
require_relative "routes/main.rb"

#HELPERS
require_relative "helpers/main.rb"

#MODELS
require_relative "models/main.rb"

#STYLES
get('/styles.css'){ scss :styles }
