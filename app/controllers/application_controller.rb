class ApplicationController < ActionController::Base
  include Pundit

  protect_from_forgery with: :exception

  def after_sign_up_path_for(*)
    dashboard_path
  end

  def after_sign_in_path_for(*)
    dashboard_path
  end

  private

  def authenticate_admin!
    redirect_to root_url, alert: 'Access denied.' unless current_user.try(:admin?)
  end
end
