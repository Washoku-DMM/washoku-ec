<<<<<<< HEAD:app/controllers/users/cart_products_controller.rb
class Users::CartProductsController < ApplicationController
=======
class CartProductsController < ApplicationController

def index
	@carts = Cart_product.all

end

def create
	@cart = Cart_product.new
	@carts = Cart_product.all

end

def edit
	@cart = Cart_product.find(params[:id])
end

def update
	@cart = Cart_product.find(params[:id])
	@cart.update
end

def destroy
	@cart = Cart_product.find(params[:id])
	cart.destroy
	render "index"

	@carts = Cart_products.all
	carts.destroy
	render "index"

end

def product_params
    # params.require(:product).permit(:name, :price)
    # 税込価格の表示方法
end

def cart_params
    params.require(:cart_product).permit(:count)
end


>>>>>>> 15183791c5575368b77c4958c8f027cce8c96eb6:app/controllers/cart_products_controller.rb
end
