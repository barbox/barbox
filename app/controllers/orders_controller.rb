class OrdersController < ApplicationController
	# before_action :authenticate_user!
	def show
		unless user_signed_in?
			redirect_to "/users/limbo"
		else
			@id = params[:id]
			@box = Box.find(@id)
			render :index
		end
	end	

	private

	def get_shipping_address
		params.require(:shipping_address).permit(:address1, :address2, :city, :state, :zip, :phone, :date)
	end
end
