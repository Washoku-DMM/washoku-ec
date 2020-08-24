class Admins::OrdersController < ApplicationController


  def index
    @orders = Order.all
    @customers = Customer.all
    # @order_product = Order_product.all
  end

  def show
    @order = Order.find(params[:id])
    @orders = Order.all
    # @custmer = Customer.find(params[:id])
    @delivery = Delivery.find(params[:id])
    # @product = Product.find(params[:id])
    @order_products = OrderProduct.all
  end

  def update
    if @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_to admins_orders_path(@order)
      else @delivery = Delivery.find(params[:id])
    @delivery.update(order_params)
    redirect_to admins_orders_path(@order)
    end
  end

  private
  def order_params
    params.require(:order).permit(:name,:shipping_fee,:postal_code,:adress,:payment_methods,:billing_amount,:order_status)
  end


end
