class Admins::OrderProductsController < ApplicationController

  def update
    @order_product = OrderProducts.find(product_id)
    @order_product.save
    @order_products = @customer.product
    redirect_to admins_product_path(product_id)
  end

  private
    def product_params
      params.require(:order_product).permit(:price, :count, :product_status)
    end
  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :email, :is_deleted, :postal_code, :address, :phone_number)
  end
end
