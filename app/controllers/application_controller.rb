class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def authenticate_admin!
    redirect_to root_url, alert: 'Access denied.' unless current_user.try(:admin?)
  end
end
