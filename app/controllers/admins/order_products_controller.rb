class Admins::OrderProductsController < ApplicationController
  before_action :authenticate_admins_admin!, only: [:update]

  def update
    @order_product = OrderProduct.find(params[:id])
    @order_product.update(order_product_params)
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
