class User < ActiveRecord::Base
  has_many :orders, foreign_key: :purchaser_id
  has_many :lineitems, through: :orders
  has_many :purchased_products, through: :lineitems, source: :product


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(username, password)
    @user = User.find_by(username: username)
    if @user && @user.password == password
      return @user
    end
  end

end
