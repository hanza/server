class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :current_org

  def session_org
    session[:org] ||= "ops"
  end

  def current_org
    @organization ||= Organization.named(session_org)
  end
end
