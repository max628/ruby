class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def after_sign_in_path_for(resource)
    session[:role] = current_user.role
    session[:id]   = current_user.id
    root_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :role, :email, :password, :password_confirmation, :name,
                                                       :preferredcontact, :contactinfo ] )
    devise_parameter_sanitizer.permit(:sign_in, keys: [:role, :email, :password, :remember_me] )
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :role, :email, :password, :password_confirmation, :name,
                                                              :preferredcontact, :contactinfo, :company_id] )
  end
end