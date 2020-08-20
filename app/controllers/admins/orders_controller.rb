class Admin::OrdersController < ApplicationController


  def index
    @orders = Order.all
    @customers = Customer.all
    @order_product = Order_product.all
  end

  def show
    @order = Order.find(params[:id])
    @custmer = Customer.find(params[:id])
    @delivery = Delivery.find(params[:id])
    @product = Product.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admin_order_path(order.id)
  end

  private
  def order_params
    params.require(:order).permit(:name,:shipping_fee,:postal_code,:adress,:payment_methods,:billing_amount,:order_status)
  end

<<<<<<< HEAD

=======
  
>>>>>>> 63706cb0660a71f7bffe9d01f9a4a17af2251103
end
