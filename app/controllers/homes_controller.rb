
class HomesController < ApplicationController

def top
	@genres = Genre.all
	@rank_products = OrderProduct.find(OrderProduct.group(:count).order('count(count) desc').limit(4).pluck(:order_product_id))
end


def about
end

end


