class Admins::OrderProductsController < ApplicationController
  before_action :authenticate_admins_admin!, only: [:update]

  def update
    @order_product = OrderProduct.find(params[:id])
    @order = Order.find(@order_product.order_id)
    @order_products = @order.order_products
    @order_product.update(order_product_params)
    @order_products.each do |order_product|
      if order_product.product_status == 2
          @order.update(order_status: 2)
          break
      end
    end
    if @order_products.count == @order_products.where(product_status: '3').count
      @order.update(order_status: 3)
    end
     redirect_back(fallback_location: root_path)
 end

  private
    def order_product_params
      params.require(:order_product).permit(:price, :count, :product_status)
    end
  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :email, :is_deleted, :postal_code, :address, :phone_number)
  end
end
