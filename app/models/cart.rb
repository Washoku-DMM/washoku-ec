class CartProducts < ApplicationRecord
	belongs_to :customer
	belongs_to :product
end
