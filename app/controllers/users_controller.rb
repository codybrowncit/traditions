class UsersController < ApplicationController
	force_ssl if Rails.env.production?
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create
		# get data from the form
		
		#give the data to the model
		@user = User.new(user_params)
		#save the model
		if @user.save
		# redirect to show or index
			redirect_to @user, notice: "Signed up Successfully!"
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		#get data from form
		
		#find the existing user
		@user = User.find(params[:id])
		#update the user with new params
		@user.update(user_params)
		#redirect to show
		redirect_to @user
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to users_path
	end
	def user_params
		params.require(:user).permit(:first_name, :last_name, :major, :email, :password, :password_confirmation)
	end

	
end