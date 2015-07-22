class BoxesController < ApplicationController
	def index
		
		@smash = Box.find_by(name: "Classic Whiskey Smash");
		@noche = Box.find_by(name: "Noche Sombrero");
		@greyhound = Box.find_by(name: "Rosemary Greyhound");

		render :index
	end

	def home
		render :home
	end

	private

	def get_zip_codes
		zips = [94102, 94103, 94104, 94105, 94107, 94108, 94109,
				  94110, 94111, 94114, 94115, 94117, 94118, 94121,
				  94122, 94123, 94133]
	end

	def get_message
		
	end
end
