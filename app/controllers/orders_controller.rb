
class OrdersController < ApplicationController

  before_action :authenticate_customers_customer!
  before_action :set_customer

   def index
      @customer = current_customers_customer
   	  @orders = Order.where(customer_id: @customer.id)
   end

   def show
   	   @order = Order.find(params[:id])
         if @order.customer_id != current_customers_customer.id
            redirect_back(fallback_location: root_path)
            flash[:alert] = "アクセスに失敗しました。"
         end
   end


   def new
    if current_customers_customer.cart_products.exists?
   		@order = Order.new
         @customer = current_customers_customer
         @deliveries = Delivery.where(customer_id: @customer.id)
    else
      flash[:danger] = 'カートが空です。'
      redirect_to cart_products_path
    end
   end

   def create
      if current_customers_customer.cart_products.exists?
         @order = Order.new(order_params)
         @order.customer_id = current_customers_customer.id

         @add = params[:order][:add].to_i

         case @add
            when 1
               @order.postal_code = @customer.postal_code
               @order.address = @customer.address
               @order.name = @customer.family_name + @customer.first_name

            when 2
               @order.postal_code = params[:order][:postal_code]
               @order.address = params[:order][:address]
               @order.name = params[:order][:name]

            when 3
               @order.postal_code = params[:order][:postal_code]
               @order.address = params[:order][:address]
               @order.name = params[:order][:name]
         end

              @order.save

            if Delivery.find_by(address: @order.address).nil?
              @delivery = Delivery.new
              @delivery.postal_code = @order.postal_code
              @delivery.address = @order.address
              @delivery.name = @order.name
              @delivery.customer_id = current_customers_customer.id
              @delivery.save
            end

            current_customers_customer.cart_products.each do |cart_product|
              order_product = @order.order_products.build
              order_product.order_id = @order.id
              order_product.product_id = cart_product.product_id
              order_product.count = cart_product.count
              order_product.price = cart_product.product.price
              order_product.customer_id = current_customers_customer.id
              order_product.save
              cart_product.destroy

            end
            render :ordercomplete

      else
        flash[:danger] = 'カートが空です。'
        redirect_to cart_products_path
      end

   end


   def confirm
           @order = Order.new
           @cart_products = current_customers_customer.cart_products
           @order.payment_methods = params[:order][:payment_methods]
           @add = params[:order][:add].to_i
           @customer = current_customers_customer
           case @add
              when 1
                 @order.postal_code = @customer.postal_code
                 @order.address = @customer.address
                 @order.name = @customer.family_name + @customer.first_name

              when 2
                @sta = params[:order][:address].to_i
                @address = Delivery.find(@sta)
                @order.postal_code = @address.postal_code
                @order.address = @address.address
                @order.name = @address.name

              when 3
                @order.postal_code = params[:order][:new_add][:postal_code]
                @order.address = params[:order][:new_add][:address]
                @order.name = params[:order][:new_add][:name]
            end
   
    end


   def ordercomplete
   end

   private


     def set_customer
       @customer = current_customers_customer
     end



   def order_params
    params.require(:order).permit(
      :created_at, :address, :name, :order_status, :payment_methods, :postal_code, :shipping_fee, :billing_amount, :customer_id,
      order_products_attributes: [:order_id, :product_id, :count, :price, :product_status, :customer_id]
      )
   end





end
