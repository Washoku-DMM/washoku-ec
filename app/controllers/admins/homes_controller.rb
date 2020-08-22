class Admins::HomesController < ApplicationController
  @customer = Customer.find(params[:id])
    private

  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :email, :is_deleted, :postal_code, :address, :phone_number)
  end


end
