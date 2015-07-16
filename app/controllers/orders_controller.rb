class OrdersController < ApplicationController
	before_action :authenticate_user!
	def index
		render :index
	end

	def payment
		render :payment
	end

	def summary
		render :summary
	end

	private

	def get_shipping_address
		params.require(:shipping_address).permit(:address1, :address2, :city, :state, :zip, :phone, :date)
	end
end
