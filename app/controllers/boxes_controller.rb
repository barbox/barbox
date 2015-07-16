class BoxesController < ApplicationController
	def index
		@boxes = Box.all
		render :index
	end
end
