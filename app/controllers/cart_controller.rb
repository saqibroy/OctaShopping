class CartController < ApplicationController
	before_action :authenticate_user!, except: [:index]
	def add
		id=params[:id]
		if session[:cart]
			cart=session[:cart]
		else
			session[:cart]={}
			cart=session[:cart]
		end
		logger.debug "cart: #{cart}"
		if cart[id]
			cart[id]=cart[id] + 1
		else
			cart[id]=1
		end
		logger.debug "cart_id: #{cart[id]}"
		logger.debug "@cart: #{session[:cart]}"
		redirect_to cart_path
	end
	def clearCart
		session[:cart]= nil
		redirect_to cart_path
	end
    def index
    	if session[:cart]
    		@cart=session[:cart]
    		logger.debug "@cart: #{@cart}"
    	else
    		@cart={}
    	end
    end
end
