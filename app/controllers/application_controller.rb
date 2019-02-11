class ApplicationController < ActionController::API
  # before_action :authorized

  def current_user
    User.find_by({ id: session[:user_id] })
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to api_v1_login_path unless logged_in?
  end

end
