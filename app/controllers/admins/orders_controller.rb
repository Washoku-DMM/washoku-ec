class Admins::OrdersController < ApplicationController
  before_action :authenticate_admins_admin!, only: [:update, :index, :show]


  def index
    @orders = Order.all
    @customers = Customer.all
    # @order_product = Order_product.all
  end

  def show
    @order = Order.find(params[:id])
    @orders = Order.all
    @order_products = @order.order_products
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
        redirect_to admins_orders_path(@order), notice: "更新完了"
    else
    @order = Order.find(params[:id])
    @orders = Order.all
    @order_products = @order.order_products
      render "show"
    end
  end

  private
  def order_params
    params.require(:order).permit(:name,:shipping_fee,:postal_code,:adress,:payment_methods,:billing_amount,:order_status)
  end


end
