class Product < ApplicationRecord
  attachment :image
  belongs_to :genre

  def tax_included_price
  	(price * 1.1).floor.to_s(:delimited)
  end
end
