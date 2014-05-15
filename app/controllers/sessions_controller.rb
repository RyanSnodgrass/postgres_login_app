class SessionsController < ApplicationController
	skip_filter :ensure_logged_in

	def create
		user = User.find_by_email(params[:email]).try(:authenticate, params[:password])
		if user
			session[:user_id] = user.id
			redirect_to figures_path, notice: "You've logged in."
		else
			flash.now.alert = "Your login attempt failed."
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_path, notice: "You are now loggged out."
	end
end