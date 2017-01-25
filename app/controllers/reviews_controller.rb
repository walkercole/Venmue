class ReviewsController < ApplicationController
	def create
	    @venue = Venue.find(params[:venue_id])
	    @review = @venue.reviews.create(review_params)
	    redirect_to venue_path(@venue), notice: "Review Created!"
 	end
	def destroy
		@venue = Venue.find(params[:venue_id])
		@review = @venue.reviews.find(params[:id])
		@review.destroy
		redirect_to venue_path(@venue), notice: "Review Deleted!"
	end

	private 
		def review_params
			params.require(:review).permit(:body, :reviewer, :venue_id, :create_at, :updated_at,)
		end
end