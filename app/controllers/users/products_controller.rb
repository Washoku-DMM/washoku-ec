<<<<<<< HEAD
class User::ProductsController < ApplicationController

 def index
 	 @products = Product.all
 	 @user = curent_user
 end


 def show
 	@product = Product.find(params[:id])
 	@user = User.find(params[:id])

 end


 def destroy
 	 @product = Product.find(params[:id])
 	 product.destroy
 	 render '/cart_products'
 end
=======
class Users::ProductsController < ApplicationController

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

>>>>>>> b0b12f333e0bd97cbdaf9a76cfdf18fc79d76657



end
