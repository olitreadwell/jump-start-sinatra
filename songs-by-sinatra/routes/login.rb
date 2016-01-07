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

get '/logout' do
  session.clear
  redirect to('/login')
end
