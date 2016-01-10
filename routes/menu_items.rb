#MENU ITEMS
get '/about' do
  @title = "All About this Website"
  slim :about
end

get '/contact' do
  @title = "Contact Us"
  slim :contact
end

post '/contact' do
  send_message
  flash[:notice] = "Thank you for your message. We'll bein touch soon."
  redirect to('/')
end
