class RatingsController < ApplicationController
before_action :authenticate_user!
load_and_authorize_resource
def index
		#@ratings = Rating.all
	end

	def new
		#@rating = Rating.new
		#@tradition = Tradition.find(params[:tradition_id])
	end

	def create
		# get data from the form
		#@rating.tradition = Tradition.find(params[:tradition_id])
		#give the data to the model
		#@rating = Rating.new(rating_params)
		@rating.user = current_user
		#save the model
		if @rating.save
			# redirect to show or index
			redirect_to @rating.tradition
		else
			render :new
		end

	end
	def rating_params
		params.require(:rating).permit(:rating_number, )
	end
	def destroy
		@rating.destroy
	end

end
