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



end
