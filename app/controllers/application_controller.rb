class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:otp_attempt])
  end

    # protected
    # def after_sign_in_path_for(resource)
    #     articles_path
    # end
end
