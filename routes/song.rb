get '/songs' do
  @songs = find_songs
  slim :songs
end

get '/songs/new' do
  halt(401, "Not Authorized") unless session[:admin]
  @song = create_song
  slim :new_song
end

get '/songs/:id' do
  @song = find_song
  slim :show_song
end

post '/songs' do
  song = Song.create(params[:song])
  redirect to ("/songs/#{song.id}")
end

get '/songs/:id/edit' do
  @song = find_song
  slim :edit_song
end

put '/songs/:id' do
  song = find_song
  song.update(params[:song])
  redirect to ("/songs/#{song.id}")
end

delete '/songs/:id' do
  find_song.destroy
  redirect to('/songs')
end
