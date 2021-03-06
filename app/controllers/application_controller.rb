class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_cart
  before_action :authenticate_user!
 
 
  
  def set_cart
      @cart = Order.where(user_id: current_user.id) if user_signed_in? 
  end
  
end
