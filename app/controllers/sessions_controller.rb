class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to admin_path
		else
			flash.now[:error] = '账号或密码错误'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to admin_path
	end
end
