class Cart < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  attr_accessible :user_id, :product_id, :quantity
  validates_presence_of :user_id, :product_id, :quantity
end
