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

end
