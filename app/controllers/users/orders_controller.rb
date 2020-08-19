<<<<<<< HEAD
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
=======
class Users::OrdersController < ApplicationController

# orderコントローラー話し合ってからかく


def index
	@user = current_user
	@orders = Order.all(@user)
end

def show
	@order = Order.find(params[id])

end

def create
	@order = Order.new

end

def update ?
	@order =Order.find(params[id])
end

def about
end





>>>>>>> b0b12f333e0bd97cbdaf9a76cfdf18fc79d76657


end
