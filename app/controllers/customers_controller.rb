class CustomersController < ApplicationController

def show
	@customer = Customer.find(params[:id])
end

def withdrawl
	@customer = Customer.find(params[:id])
end

def hide
        @customer = Customer.find(current_customers_customer.id)
        #is_deletedカラムにフラグを立てる(defaultはfalse)
        @customer.update(is_deleted: true)
        #ログアウトさせる
        reset_session
        flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
        redirect_to root_path
end

def edit
	@customer = Customer.find(params[:id])
end

def update
	@customer = Customer.find(params[:id])
	@customer.update(customer_params)
	redirect_to customer_path(@customer)
end

def destroy
	@customer = Customer.find(params[:id])
	@customer.destroy
	redirect_to "/top"

end

def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :email)
end


end
