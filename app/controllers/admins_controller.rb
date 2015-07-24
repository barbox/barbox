class AdminsController < ApplicationController
	def index
		@orders = Order.all
		render :index
	end
end
