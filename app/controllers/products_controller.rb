
class ProductsController < ApplicationController

def index
	# ジャンル選択されているなら
	if
	@products = Product.find(prpduct.genre.id).paginate(page: params[:page], per_page: 8)
	#↑ジャンルidから持ってこないといけない

  else   #それ以外（ジャンル選択されていないなら）
	@products = Product.all.paginate(page: params[:page], per_page: 8)


	@user = current_user

  # ２０件毎に表示したい場合
  # @users = User.paginate(page: params[:page], per_page: 20)
  end

end

def show
	@product =Product.find(params[:id])
end

# def destroy
# 	@product = Product.find(params[id])
# 	product.destroy
# 	rende '/cart_products'
# end
# あとで話し合う

  private
  def product_params
    params.require(:product).permit(:name, :price, :is_active, :genre_id, :product_introduction, :image)
  end


end
