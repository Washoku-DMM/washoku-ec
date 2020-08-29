
class HomesController < ApplicationController

def top
	@product = Product.where(is_active: 'true')
	@products = @product.all.order(created_at: :desc).limit(4)
    @genres = Genre.where(is_active: true)
    # @genre = @genres.pluck(:name)
    # @genre = @genres.where(genre_name: @genre)
    # @rank_products = Product.find(OrderProduct.group(:product_id).order('count(product_id) desc').limit(4).pluck(:product_id))


end


def about
end

end


