class ApplicationController < ActionController::Base
  def after_admins_admins_sign_in_path_for(resource)
    admins_homes_top_path
  end

  def after_customers_customers_sign_in_path_for(resource)
    homes_top_path
  end


  #カラム追加
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
  end

end
