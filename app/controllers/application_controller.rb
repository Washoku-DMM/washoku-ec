class ApplicationController < ActionController::Base
 before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
		case resource

		when Admin
		  admins_homes_top_path
		when Customer
		  root_path
		end
	end


  def after_sign_out_path_for(resource_or_scope)
    if resource_or_scope == :admins_admin
      new_admins_admin_session_path
    else
      new_customers_customer_session_path
    end
  end



  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
  end
end