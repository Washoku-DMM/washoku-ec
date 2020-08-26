module ApplicationHelper

def price_include_tax(price)
  price = price * 1.1
  "#{price.floor.to_s(:delimited)}円"
end

end
