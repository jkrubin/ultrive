class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello 
  	render html: "hello world"
  end

  def initialize_cart
  	if !session[:cart_id].nil?
  		@current_cart = Cart.find(session[:cart_id])
  	else
  		@current_cart = Cart.create
  		session[:cart_id] = @current_cart.id
  	end
  	
  end
end
