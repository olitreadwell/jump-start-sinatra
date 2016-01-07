#REQUIREMENTS
require 'sinatra'
# require 'sinatra-contrib'
require 'sass'
require 'slim'


#ROUTES
require_relative "routes/main.rb"

#MODELS
require_relative "models/main.rb"

#CONFIGURATION
require './config'

#STYLES
get('/styles.css'){ scss :styles }
