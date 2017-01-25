class HomeController < ApplicationController
	def index
		@user = current_user
		@location = request.location
	end
end