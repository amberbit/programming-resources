class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_gon_values, :current_user
  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    gon.current_user = @current_user
  end

  def set_gon_values
    gon.subjects = Subject.all.collect
  end
end
