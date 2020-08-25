
class ProductsController < ApplicationController

def index
    # sort = params[:sort]
    # product_genres = nil
    @genres = Genre.where(is_active: 'true')
    @genre = @genres.pluck(:id)
    @products = Product.where(is_active: 'true')
    @products = @products.where(genre_id: @genre).paginate(page: params[:page], per_page: 8)

      #    if product_genres
	  #    @products = Product.where(product_genre_id: product_genres).
	  #                        paginate(page: params[:page], per_page: 8)
      #   else
	  #    @products = Product.all.paginate(page: params[:page], per_page: 8)

	  # end
end


def show
	@product =Product.find(params[:id])
	@cart_product = @product.cart_products.build
end

# def destroy
# @product = Product.find(params[id])
# product.destroy
# rende '/cart_products'
# end
# あとで話し合う

  private
  def product_params
    params.require(:product).permit(:name, :price, :is_active, :genre_id, :product_introduction, :image)
  end
end
