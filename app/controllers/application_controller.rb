class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  include Pundit

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  after_action :verify_authorized, except: %i[index my_dresses], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: %i[index my_dresses], unless: :skip_pundit?

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :address, :zip_code, :city, :phone_number, :password)}
  end
end
