configure do
  enable :sessions
  set :username, 'frank'
  set :password, 'sinatra'
  set :public_folder, 'assets'
end

configure :development do
  require 'sinatra/reloader'
  DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
  set :email_address   => 'smtp.gmail.com',
      :email_user_name => 'oliver.treadwell@gmail.com',
      :email_password  => none_of_your_business,
      :email_domain    => 'localhost.localdomain'
end

configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
  set :email_address   => 'smtp.sendgrid.net',
      :email_user_name => ENV['SENDGRID_USERNAME'],
      :email_password  => ENV['SENDGRID_PASSWORD']
      :email_domain    => 'heroku.com'
end

def none_of_your_business
  
end
