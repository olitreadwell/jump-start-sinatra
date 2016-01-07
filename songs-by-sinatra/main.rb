#REQUIREMENTS
require 'sinatra'
require 'sinatra/reloader'
require 'sass'
require 'slim'

#ROUTES
require './routes'

#MODELS
require './song'

#CONFIGURATION
require './config'

#STYLES
get('/styles.css'){ scss :styles }
