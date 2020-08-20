<<<<<<< HEAD:app/controllers/users/products_controller.rb
class User::ProductsController < ApplicationController
=======
class ProductsController < ApplicationController

def index
	@products = Product.all
	@user = current_user
end

def show
	@product =Product.find(params[:id])
	@user = User.find(pramas[:id])
end

# def destroy
# 	@product = Product.find(params[id])
# 	product.destroy
# 	rende '/cart_products'
# end
# あとで話し合う

>>>>>>> 15183791c5575368b77c4958c8f027cce8c96eb6:app/controllers/products_controller.rb
end
