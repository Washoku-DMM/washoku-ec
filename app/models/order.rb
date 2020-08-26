class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  has_many :products, :through => :order_products

# if order_status == 1 then
#   order_products.product_status == 1
# end


end
