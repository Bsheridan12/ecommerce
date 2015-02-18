class User < ActiveRecord::Base
  has_many :orders, foreign_key: :purchaser_id
  has_many :lineitems, through: :orders
  has_many :purchased_products, through: :lineitems, source: :product
end
