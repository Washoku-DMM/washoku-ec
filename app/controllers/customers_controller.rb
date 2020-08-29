class CustomersController < ApplicationController

  before_action :authenticate_customers_customer!
  before_action :set_customer
  before_action :baria_customer


def show
	@customer = Customer.find(params[:id])
end

def withdrawl
	@customer = Customer.find(params[:id])
end

def hide
        @customer = Customer.find(params[:id])
        @customer.update(is_deleted: false)
        reset_session
        redirect_to root_path, notice:"ありがとうございました。またのご利用を心よりお待ちしております。"
end

def edit
	@customer = Customer.find(params[:id])
end

def update
	@customer = Customer.find(params[:id])
	if @customer.update(customer_params)
     flash[:success] = 'お客様の情報が更新されました！'
	   redirect_to customer_path(@customer.id)
  else
     @customer = Customer.find(params[:id])
     flash[:danger] = 'お客様の情報を更新出来ませんでした。空欄の箇所はありませんか？'
     render 'edit'
  end
end


def customer_params
    params.require(:customer).permit(:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :email)
end

def set_customer
    @customer = current_customers_customer
end

def baria_customer
    if params[:id].to_i != current_customers_customer.id
      redirect_back(fallback_location: root_path)
    end
end

end
