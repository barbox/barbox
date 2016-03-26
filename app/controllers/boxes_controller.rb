class BoxesController < ApplicationController
	def index

		#when a user enters a zip code when they navigate from the landing page,
		#the home page will say if we deliver in your zip code or not.
		if !user_signed_in? && params[:zip]
			zip_from_user = get_zip_from_user["zip_code"].to_i

			if get_zip_codes.index(zip_from_user)
				@message = "We deliver in your area."
			else
				@message = "Sorry, we currently do not deliver in your area, but feel free to browse!"
			end
		end

		@oldfashion = Box.find_by(name: "Old-Fashioned");
		@julep = Box.find_by(name: "Cranberry Basil Julep");
		@greyhound = Box.find_by(name: "Rosemary Greyhound");

		render :index
	end

	def home
		render :home
	end

	private

	#list of zipcodes that we deliver to
	def get_zip_codes
		zips = [94102, 94103, 94104, 94105, 94107, 94108, 94109,
				  94110, 94111, 94114, 94115, 94117, 94118, 94121,
				  94122, 94123, 94133]
	end

	def get_zip_from_user
		params.require(:zip).permit(:zip_code)
	end
end
