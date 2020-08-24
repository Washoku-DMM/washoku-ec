class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
case resource
  when Admin
    admins_homes_top_path
  when Customer
    homes_top_path
  end
end


  #カラム追加
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :phone_number])
  end

end
