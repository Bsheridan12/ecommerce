get "/categories" do
  @user = current_user
  @categories = Category.all

  erb :categories
end
