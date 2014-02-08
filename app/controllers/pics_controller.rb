class PicsController < ApplicationController
	def index 
		@pics = Pic.all
	end

	def new 
		@pic = Pic.new
	end

#similar to what we did in the console
	def create
		Pic.create( pics_params )
		redirect_to pics_path
	end

	 
	private

	def pics_params
		params.require(:pic).permit(:hour, :emotion, :learned)
	end

end

