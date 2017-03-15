class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :city])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :city, :bio, :image])
  end

  def check_admin?
    unless current_user && current_user.admin?
      redirect_to root_path, notice: "You don't have access to that page."
    end
  end
  
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end

end
