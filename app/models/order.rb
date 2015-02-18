class Order < ActiveRecord::Base
  belongs_to :purchaser, class_name: "User"

  has_many :lineitems
  has_many :products, through: :lineitems
  has_many :categorys, through: :products
end
