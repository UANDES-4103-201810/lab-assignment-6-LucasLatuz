class SessionsController < ApplicationController
	def new
	end

	def create
		if is_user_logged_in?
			redirect_to user_path(:user_id)
			flash[:notice]= "Correctly logged in"
		else
			redirect_to users_url
			flash[:notice]= "Something didnt work"
		end
	end

	def destroy
		session.delete(:user_id)
		@current_user = nil
	end
end
