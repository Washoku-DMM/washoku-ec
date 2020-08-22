class ApplicationController < ActionController::Base
def after_admins_admins_sign_in_path_for(resource)
    admins_homes_top_path
  end

  def price_include_tax(price)
	price = price * 1.1
	price.floor
  end

end
