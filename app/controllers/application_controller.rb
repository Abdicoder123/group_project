class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? #Makes sure parameters are permitted before any action occurs
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern


  protected

  def configure_permitted_parameters  #Permit these parameters to be saved in the database
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :address, :phone_number])
  end
end
