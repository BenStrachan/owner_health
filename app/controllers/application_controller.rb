class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:account_update, keys: [:first_name,:last_name, :street_address, :city, :state, :postcode, :country, :longitude, :latitude]) 
  end


end
