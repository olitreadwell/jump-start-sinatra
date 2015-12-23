#REQUIREMENTS
require 'sinatra'
require 'sinatra/reloader' if development?

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
