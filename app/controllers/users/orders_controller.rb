class User::OrdersController < ApplicationController

   def index
   	   @orders = Order.all
   	   @user = current_user
   end


   def show
   	   @order = Order.find(params[:id])
   	   
   end

   def create
   end

   def update
   end


end
