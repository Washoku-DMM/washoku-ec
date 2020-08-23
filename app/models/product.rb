class Product < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :cart_products, dependent: :destroy
  has_many :order_products, dependent: :destroy



  def tax_included_price
  	(price * 1.1).floor.to_s(:delimited)
  end
end
