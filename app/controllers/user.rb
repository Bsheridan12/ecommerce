get "/login" do

  erb :login
end

post "/login" do
  user = User.authenticate(params[:username], params[:password])

  if user
    session[:user_id] = user.id
    redirect "/categories"
  else
    session.delete(:user_id)
    redirect "/login"
  end
end

post "/user" do

end
