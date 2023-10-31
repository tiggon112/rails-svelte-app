class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

    def configure_permitted_parameters
      // It is just for authorization. Update needed at 10/31
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    end
end
