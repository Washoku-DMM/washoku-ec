
class HomesController < ApplicationController

def top
	@genres = Genre.all
	@rank_products = Product.find(OrderProduct.group(:product_id).order('count(product_id) desc').limit(4).pluck(:product_id))
	
end



def about
end

end


