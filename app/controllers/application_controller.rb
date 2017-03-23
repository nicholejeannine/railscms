class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find_by_id(session[:user_id])
  end

  def is_authenticated?
    unless @current_user
      flash[:danger] = 'ACCESS DENIED!!!!!'
      redirect_to login_path
    end
  end
end
