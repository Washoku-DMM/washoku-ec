<<<<<<< HEAD:app/controllers/users/deliveries_controller.rb
class User::DeliveriesController < ApplicationController
=======
class DeliveriesController < ApplicationController

def index
	@delivery = Delivery.new
	@deliveries = Delivery.all
end

def create
	@delivery = Delivery.new(delivery_params)
	delivery.save
	redirect_to deliveries_path(@delivery)
end

def edit
	@delivery = Delivery.find(params[:id])
end

def update
	@delivery = Delivery.find(params[:id])
	delivery.update(delivery_params)
	redirect_to deliveries_path(@delivery)
end

def destroy
	@delivery = Delivery.find(params[:id])
	@delivery.destroy
	redirect_to deliveries_path(@delivery)
end

private

def delivery_params
    params.require(:delivery).permit(:postal_code, :address, :name)
end

>>>>>>> 15183791c5575368b77c4958c8f027cce8c96eb6:app/controllers/deliveries_controller.rb
end
