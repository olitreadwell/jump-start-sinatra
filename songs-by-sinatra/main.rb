#REQUIREMENTS
require 'sinatra'
require 'sinatra/reloader' if development?

#CONFIGURATION
set :public_folder, 'assets'

#ROUTES
get '/' do
  @title = "Songs by Sinatra"
  erb :home
end

get '/about' do
  @title = "About this Site"
  erb :about
end

get '/contact' do
  @title = "Contact Us"
  erb :contact
end

not_found do
  erb :not_found
end
