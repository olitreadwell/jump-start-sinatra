def send_message

  Pony.mail(
    :from    => params[:name] + "<" + params[:email] + ">",
    :to      => 'oliver.treadwell@gmail.com',
    :subject => params[:name] + " has contacted you",
    :body    => params[:message],
    :via     => :smtp,
    :via_options => {
      :address              => 'smtp.gmail.com',
      :port                 => '587',
      :enable_starttls_auto => true,
      :user_name            => 'oliver.treadwell@gmail.com',
      :password             => none_of_your_business,
      :authentication       => :plain,
      :domain               => 'localhost.localdomain'
    }
  )

end
