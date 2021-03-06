class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  load_and_authorize_resource only: [:create, :read], unless: :devise_controller?

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, warning: exception.message
  end

end
