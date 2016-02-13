class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def current_user
    User.find(id: session[:user_id])
  end

  def is_logged_in?
    not session[:user_id].nil?
  end

  def redirect_unless_logged_in
    redirect_to landing_login_path unless is_logged_in?
  end
    
end
