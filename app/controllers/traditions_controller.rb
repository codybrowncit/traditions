class TraditionsController < ApplicationController
	before_action :authenticate_user!
	load_and_authorize_resource
	def index
		#@traditions = Tradition.all
	end

	def new
		#@tradition = Tradition.new
	end

	def create
		# get data from the form
		
		#give the data to the model
		#@tradition = Tradition.new(tradition_params)
		@tradition.user = current_user
		#save the model
		if @tradition.save
			# redirect to show or index
			redirect_to @tradition
		else
			render :new
		end

	end

	def show
		#@tradition = Tradition.find(params[:id])
		
		
	end

	def edit
		#@tradition = Tradition.find(params[:id])
	end

	def update
		#get data from form
		
		#find the existing tradition
		#@tradition = Tradition.find(params[:id])
		#update the tradition with new params
		@tradition.update(tradition_params)
		#redirect to show
		redirect_to @tradition
	end

	def destroy
		#@tradition = Tradition.find(params[:id])
		@tradition.destroy
		redirect_to traditions_path
	end
	def tradition_params
		params.require(:tradition).permit(:rating, :name, :description, :approved)
	end

end
