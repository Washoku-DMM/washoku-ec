class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.all
<<<<<<< HEAD
    @customers = Customer.all
    @order_product = Order_product.all
=======
    @custmer =
    @order_product =
>>>>>>> 1d58b3206659e21ac27c6fb754d6a63cf4802b85
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


end
