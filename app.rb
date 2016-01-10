#REQUIREMENTS
require 'sinatra'
require_relative "gem_requirements"

configure :development do
 require 'sinatra/reloader'
 DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end

before do
  set_title
end

#ROUTES
require_relative "routes/main.rb"

#HELPERS
require_relative "helpers/main.rb"

#MODELS
require_relative "models/main.rb"

#CONFIGURATION
require './config'

#STYLES
get('/styles.css'){ scss :styles }
