class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception

	def hello

		if session[:name].nil?
			redirect_to login_path
		else
			render :hello
		end
		
	end
	
end