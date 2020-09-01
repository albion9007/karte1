class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:idnum, :name_kanji, :name_kana, :birth_date])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:idnum])
  end
end
# , :password, :password_confirmation
# , :password, :password_confirmation