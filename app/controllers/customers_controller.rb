class CustomersController < ApplicationController

def show
	@customer = Customer.find(params[:id])
end

def edit
	@customer = Customer.find(params[:id])
end

def update
	@customer = Customer.find(params[:id])
	customer.update(customer_params)
	render "show"
end

def destroy
	@customer = Customer.find(params[:id])
	customer.destroy
	redirect_to "/top"

end

def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :adress, :phone_number, :email)
end


end
