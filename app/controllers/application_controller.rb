class ApplicationController < ActionController::Base



  protect_from_forgery with: :exception
  helper_method :current_salesman, :require_login

  # def cart
  #   session[:cart] ||= []
  # end



  private
  def current_salesman
   @current_salesman ||= Salesman.find_by(id: session[:salesman_id]) if session[:salesman_id]
  end

  def logged_in?
   !!current_salesman
  end
  def require_login
    redirect_to root_url  unless current_salesman
  end

end
