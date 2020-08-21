class ApplicationController < ActionController::Base
def after_admins_admins_sign_in_path_for(resource)
    admins_homes_top_path
  end
end
