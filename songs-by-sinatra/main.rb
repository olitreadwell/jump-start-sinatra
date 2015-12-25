#REQUIREMENTS
require 'sinatra/reloader'
require 'sinatra'
require 'slim'

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
