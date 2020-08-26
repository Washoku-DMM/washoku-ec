class ApplicationController < ActionController::Base

  	def after_sign_in_path_for(resource)
		case resource

		when Admin
		  admins_homes_top_path
		when Customer
		  root_path
		end
	end

  def after_sign_out_path_for(resource)

    if Admin
      new_admins_admin_session_path
    if Customer
      new_customers_customer_session_path
    end
  end
end


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
  end
end