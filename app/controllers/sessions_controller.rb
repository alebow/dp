class SessionsController < ApplicationController

	def new
	end

	def create
		associate = Associate.find_by_email(params[:session][:email].downcase)
		if associate && associate.authenticate(params[:session][:password])
			sign_in associate
			redirect_back_or associate
		else
			flash.now[:error] = 'Invalid email/password combination'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end

end
