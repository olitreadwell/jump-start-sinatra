require_relative "menu_items"
require_relative "login"

#ROOT
get '/' do
  @title = "Songs by Sinatra"
  slim :home
end

#ERROR HANDLING
not_found do
  @title = "404"
  slim :not_found
end
