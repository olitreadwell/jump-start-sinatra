require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

__END__
@@home
<!doctype html>
  <html lang="en">

  </html>
