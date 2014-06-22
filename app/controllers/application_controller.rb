class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :ensure_logged_in
  helper_method :current_user

  private

  # If the method coming from the view is 'delete', dont do anything and 
  #   let the delete method happen.
  # else find the user_id from the login/signup page and save to 
  #   the @current_user var
  def current_user
  	unless params['_method'] == "delete"
  		@current_user ||= User.find(session[:user_id]) if session[:user_id]
  	end
  end

  # Authenticates whether the user is logged in to the system.
  # Checks to make sure the 'current_user' method is set
  # If not, then the controller routes the user to the front page
  def ensure_logged_in
  	if current_user.nil?
  		redirect_to login_path
  	end
  end

end
