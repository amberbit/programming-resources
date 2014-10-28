class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_gon_values
private
  def set_gon_values
    gon.subjects = Subject.all.collect(&:name)
  end
end
