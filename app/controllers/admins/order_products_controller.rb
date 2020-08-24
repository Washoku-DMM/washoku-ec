class Admins::OrderProductsController < ApplicationController

  def update
    @order_product = OrderProduct.find(params[:id])
    @order_product.update(order_product_params)
    redirect_to admins_product_path(@order_product.product)
  end

  private
    def order_product_params
      params.require(:order_product).permit(:price, :count, :product_status)
    end
  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :email, :is_deleted, :postal_code, :address, :phone_number)
  end
end
