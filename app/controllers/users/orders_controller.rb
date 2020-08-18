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







end
