class PicturesController < ApplicationController
before_action :authenticate_user!
load_and_authorize_resource
def index
		#@pictures = Picture.all
	end

	def new
		#@picture = Picture.new
	end

	def create
		# get data from the form
		
		#give the data to the model
		#@picture = Picture.new(picture_params)
		@picture.user = current_user
		#save the model
		if @picture.save
			# redirect to show or index
			redirect_to @picture
		else
			render :new
		end

	end

	def show
		#@picture = Picture.find(params[:id])
	end

	def edit
		#@picture = Picture.find(params[:id])
	end

	def update
		#get data from form
		#find the existing 
		#@picture = Picture.find(params[:id])
		#update the picture with new params
		@picture.update(picture_params)
		#redirect to show
		redirect_to @picture
	end

	def destroy
		#@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_path
	end
	def picture_params
	 params.require(:picture).permit(:url, :tradition_id, :approved)
	end
end

