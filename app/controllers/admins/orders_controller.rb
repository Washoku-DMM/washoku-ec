<<<<<<< HEAD
class Admin::OrdersController < ApplicationController
=======
class Admins::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end
  def show
    @order = Order.find(params[:id])
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


>>>>>>> b0b12f333e0bd97cbdaf9a76cfdf18fc79d76657
end
