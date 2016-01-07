#ROOT
get '/' do
  @title = "Songs by Sinatra"
  slim :home
end

#MENU ITEMS
get '/about' do
  @title = "All About this Website"
  slim :about
end

get '/contact' do
  @title = "Contact Us"
  slim :contact
end

#LOGIN
get '/login' do
  slim :login
end

post '/login' do
  if params[:username] == settings.username &&
     params[:password] == settings.password
    session[:admin] = true
    redirect to('/songs')
  else
    slim :login
  end
end

#ERROR HANDLING
not_found do
  @title = "404"
  slim :not_found
end

