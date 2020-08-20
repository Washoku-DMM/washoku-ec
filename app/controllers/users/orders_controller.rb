class User::OrdersController < ApplicationController

   def index
   	   @orders = Order.all(@user)
   	   @user = current_user
   end

   def show
   	   @order = Order.find(params[:id])
   end

   def new
   		@order = Order.new
   end

   def confirm
   		@cart = Cart.all
   		@order = Order.new(order_params)
   		render :new if @order.invalid?
   end

   def create
	   	@order = Order.new(order_params)
	   	respond_to do |format|
	   		if params[:back]
	   			format.html { render :new }
	   		elsif @order.save
	   			format.html { redirect_to @,}
	   			format.json { render :show, status: :created, location: @order }
	   		else
	   			format.html { render :new }
	   			format.json { render json: @order.errors, status: :unprocessable_entity }
	   		end
	   	end
   end

   def about
   end

   private

   def order_params
    params.require(:order).permit(:shipping_fee, :postal_code, :address, :name, :postal_code, :adress, :payment_methods, :billing_amount, :order_status)
   end


end
