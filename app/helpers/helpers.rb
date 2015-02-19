helpers do
  def current_user
    @_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
