class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@new_user = User.new
	end
	def create
		@new_user = User.new(user_params)
		if @new_user.save
			# flash[:notice] = "You Signed up successfully!"
			redirect_to user_path(@new_user)
		else
			# flash[:notice] = "bummer, something went wrong"
			render new_user_path
		end
	end
	def show
		@user = User.find(params[:id])
	end
	def user_params
		params.require(:user).permit(:name, :email, :password)
	end


end