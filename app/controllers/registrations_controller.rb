class RegistrationsController < ApplicationController
	def new
	
	end
	def create

		@user = User.new (user_params)

		if @user.save
			redirect_to users_url
			flash[:notice]= "User has been created"
		else
			redirect_to registrations_url
			flash[:notice]= "The registration failed"
		end
	end

	def user_params
		params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
	end
end
