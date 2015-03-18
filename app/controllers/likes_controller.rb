class LikesController < ApplicationController
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
		@like.user = current_user
		#save the model
		if @like.save
			# redirect to show or index
			redirect_to @like.picture
		else
			render :new
		end
	end
	def rating_params
		params.require(:like).permit(:liked, :user_id, :picture_id)
	end
	def destroy
		@like.destroy
	end

end
