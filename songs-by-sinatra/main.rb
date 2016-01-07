#REQUIREMENTS
require 'sinatra'
require 'sinatra/reloader'
require 'sass'
require 'slim'
require './song'

configure do
  enable :sessions
  set :username, 'frank'
  set :password, 'sinatra'
end

#STYLES
get('/styles.css'){ scss :styles }

#CONFIGURATION
set :public_folder, 'assets'

#ROUTES
get '/' do
  @title = "Songs by Sinatra"
  slim :home
end

get '/about' do
  @title = "All About this Website"
  slim :about
end

get '/contact' do
  @title = "Contact Us"
  slim :contact
end

not_found do
  @title = "404"
  slim :not_found
end

get '/login' do
  slim :login
end
