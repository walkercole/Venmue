class HomeController < ApplicationController
	def index
		@user = current_user
		@locations = Venue.all
	end
end