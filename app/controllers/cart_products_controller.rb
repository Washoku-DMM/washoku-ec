class CartProductsController < ApplicationController

  before_action :authenticate_customers_customer!
  before_action :set_cart_product, only: [:show, :update, :destroy, :edit]
  before_action :set_customer

def index
	@cart_products = current_customers_customer.cart_products.all
end

def create
	@cart_product = current_customers_customer.cart_products.build(cart_product_params)
	@current_product = CartProduct.find_by(product_id: @cart_product.product_id, customer_id: @cart_product.customer_id)
	if @current_product.nil?
		if @cart_product.save
			flash[:success] = 'カートに商品が追加されました！'
			redirect_to cart_products_path
		else
			@cart_products = @customer.cart_products.all
			render 'index'
			flash[:danger] = 'カートに商品を追加できませんでした。'
		end
	else
		new_count = @current_product.count + cart_product_params[:count].to_i
		@current_product.update(count: new_count)
		flash[:success] = 'カート内の商品を更新しました！'
		redirect_to cart_products_path
	end
end

def destroy
	@cart_product.destroy
	redirect_to cart_products_path
	flash[:info] = 'カートの商品を取り消しました'
end

def update
	if @cart_product.update(cart_product_params)
		redirect_to cart_products_path
		flash[:success] = 'カート内の商品を更新しました！'
	end
end

def destroy_all
	@customer.cart_products.destroy_all
	redirect_to cart_products_path
	flash[:info] = 'カートを空にしました。'

end

def total_price
	cart_products.to_a.sum { |cart_product| cart_product.total_price }
end

private

def set_customer
	@customer = current_customers_customer
end

def set_cart_product
	@cart_product = CartProduct.find(params[:id])
end

def cart_product_params
	params.require(:cart_product).permit(:product_id, :customer_id, :count)
end

end


