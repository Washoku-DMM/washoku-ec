
class HomesController < ApplicationController

def top
	@products = Product.all.order(created_at: :desc).limit(4)
	# @rank_products = Product.find(OrderProduct.group(:product_id).order('count(product_id) desc').limit(4).pluck(:product_id))
    @genres = Genre.where(is_active: true)
    # @genre = @genres.pluck(:name)
    # @genre = @genres.where(genre_name: @genre)


end


def about
end

end


