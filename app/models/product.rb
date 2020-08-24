class Product < ApplicationRecord
  attachment :image
  belongs_to :genre
  has_many :cart_products, dependent: :destroy
  has_many :order_products, dependent: :destroy
  has_many :customers, through: :cart_products
  has_many :products, through: :order_products

  validates :name , presence: true
  validates :price ,  presence: true, numericality: { only_integer: true }
  validates :product_introduction,  presence: true

  def tax_included_price
  	(price * 1.1).floor.to_s(:delimited)
  end
end
