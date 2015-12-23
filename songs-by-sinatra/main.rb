require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  @title = "Songs by Sinatra"
  erb :home
end

get '/about' do
  erb :about
end

get '/contact' do
  erb :contact
end
