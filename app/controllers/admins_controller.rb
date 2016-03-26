class AdminsController < ApplicationController
	#renders an order page Admins can only access
	def index
		@orders = Order.all
		render :index
	end
end
