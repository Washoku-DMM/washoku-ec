class Admins::CustomersController < ApplicationController
  before_action :authenticate_admins_admin!, only: [:edit, :update, :index, :show]

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to admins_customer_path(@customer), notice: "更新完了"
    else
      @customer = Customer.find(params[:id])
      render "edit"
    end

  end

  private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :email, :is_deleted, :postal_code, :address, :phone_number)
  end
end
