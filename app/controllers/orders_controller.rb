class OrdersController < ApplicationController
	# before_action :authenticate_user!
	def show
		unless user_signed_in?
			redirect_to "/users/limbo"
		else
			@id = params[:id]
			@box = Box.find(@id)

			@delivery_times = []

			current_time = Time.now.hour

			while current_time < 24 do

				lower_time_range = (current_time + 2) % 12
				upper_time_range = (current_time + 3) % 12

				if (current_time + 3) < 12 || (current_time + 3) > 23
					meridiem = "AM"
				else
					meridiem = "PM"
				end

				if lower_time_range == 0
					lower_time_range = 12
				end
				if upper_time_range == 0
					upper_time_range = 12
				end

				time_string = "#{lower_time_range} - #{upper_time_range}#{meridiem}"
				@delivery_times << time_string
				current_time += 1
			end

			render :index
		end
	end	

	private

	def get_shipping_address
		params.require(:shipping_address).permit(:address1, :address2, :city, :state, :zip, :phone, :date, :time)
	end
end
