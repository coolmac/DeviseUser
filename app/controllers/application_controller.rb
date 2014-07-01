class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.











  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me, :first_name, :last_name, :date_of_birth, :profilepic,:profilepic_file_name,
    :profilepic_file_size, :profilepic_content_type,:profilepic_updated_at,:photo , :photo_file_name) }
    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username,  :password, :remember_me) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password, :first_name, :last_name, :date_of_birth, :profilepic, :profilepic_file_name,
                                                                   :profilepic_file_size, :profilepic_content_type,:profilepic_updated_at,:photo, :photo_file_name) }
  end


  protect_from_forgery with: :exception
end
