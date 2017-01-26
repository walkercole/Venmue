class VenuesController < ApplicationController
	def new
		@venue = Venue.new
	end
	def create
		@venue = current_user.venues.new(venue_params)

		if @venue.save
			puts @venue.inspect
			redirect_to @venue, notice: "Venue posted!"
		else
			@alert =  "There was an issue posting your venue! #{@venue.errors.full_messages}"
			render "home/index"
		end
	end
	def index	
  		@venues = if params[:search].present?
	   		Venue.near(params[:search], 50)
	  	else
	    	Venue.all
	  	end
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
	def show
		@venue = Venue.find(params[:id])
	end
	def edit
		@venue = Venue.find(params[:id])
	end
	def update

		@venue = Venue.find(params[:id])

		if @venue.update(venue_params)
			redirect_to :back, notice: "Date Saved!"

		else
			@alert =  "Date could not be saved! #{@venue.errors.full_messages}"
			redirect_to :back
		end		
	end

	private

		def venue_params
			params.require(:venue).permit(:address, :venue_title, :venue_describe, :latitude, :longitude, :contact, :avatar, :user_id)
		end
end