
class OrdersController < ApplicationController

   def index
   	   @orders = Order.all
   	   @user = current_user
   end

   def show
   	   @order = Order.find(params[:id])
   end

   def new
   		@order = Order.new
         @customer =Customer.find(current_user)
         @delivery = delivery.new
   end

   def confirm
         @user = current_user
   		@carts = Cart.all(@user)
   		@order = Order.new(order_params)
         @order_product = Oder_product.new
   		render :new if @order.invalid?
   end

   def create
	   	@order = Order.new(order_params)
	   	respond_to do |format|
	   		if params[:back]
	   			format.html { render :new }
	   		elsif @order.save
	   			format.html { redirect_to orders_confirm,location: @order}
	   			format.json { render :show, status: :created, location: @order }
	   		else
	   			format.html { render :new }
	   			format.json { render json: @order.errors, status: :unprocessable_entity }
	   		end
         end
   end

   def ordercomplete
   end

   private

   def order_params
    params.require(:order).permit(:shipping_fee, :postal_code, :address, :name, :postal_code, :adress, :payment_methods, :billing_amount, :order_status)
   end


end
