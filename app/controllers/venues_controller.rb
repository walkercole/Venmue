class VenuesController < ApplicationController

	def index
		@venue = Venue.new
	end
	def avatar
		if params[:user]
			current_user.avatar = params[:user][:avatar]
			current_user.save!
			redirect_to edit_venue_path
		else
			redirect_to edit_venue_path,
			notice: "No Avatar Found"
		end
	end
end