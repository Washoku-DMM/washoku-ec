class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_products, dependent: :destroy
  has_many :products, :through => :order_products

  validates :payment_methods, presence: true
  validates :postal_code, presence: true
  validates :address, presence: true
  validates :name, presence: true


end
