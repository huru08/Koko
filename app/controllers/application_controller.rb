class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:edit, :update, :destroy, :new, :create]

    #ログイン後の遷移
    def after_sign_in_path_for(resource) 
       "/"
    end
    #ログアウト後の遷移
   def after_sign_out_path_for(resource) 
       "/"
    end

    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      added_attrs = [ :email, :username, :password, :password_confirmation ]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
    end



end
