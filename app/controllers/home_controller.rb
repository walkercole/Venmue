class HomeController < ApplicationController
	def index
		@user = current_user
		@location = request.location
		@locations = Venue.all
	end
end