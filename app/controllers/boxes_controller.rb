class BoxesController < ApplicationController
	def index
		
		@smash = Box.find_by(name: "Classic Whiskey Smash");
		@noche = Box.find_by(name: "Noche Sombrero");
		@greyhound = Box.find_by(name: "Rosemary Greyhound");

		render :index
	end
end
