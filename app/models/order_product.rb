class OrderProduct < ApplicationRecord
	belongs_to :order
	belongs_to :product

# if product.product_status == 3 then
#   orders.order_status == 3
# end

end
