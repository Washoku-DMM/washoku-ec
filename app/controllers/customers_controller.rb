class CustomersController < ApplicationController

def show
	@customer = Customer.find(params[:id])
end

def withdrawl
	@customer = Customer.find(params[:id])
end

def hide
        @customer = Customer.find(params[:id])
        #is_deletedカラムにフラグを立てる(defaultはfalse)
        @customer.update(is_deleted: true)
        #ログアウトさせる
        reset_session
        redirect_to root_path, notice:"ありがとうございました。またのご利用を心よりお待ちしております。"
end

def edit
	@customer = Customer.find(params[:id])
end

def update
	@customer = Customer.find(params[:id])
	if @customer.update(customer_params)
	   redirect_to customer_path(@customer)
   else
    @customer = Customer.find(params[:id])
    render 'edit'
  end
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
