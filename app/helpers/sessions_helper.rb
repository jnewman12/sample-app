module SessionsHelper

	#Log in user
	def log_in(user)
		session[:user_id] = user.id 
	end

	# return the current logged-in user
	def current_user
		@current_user ||= User.find_by(id: session[:user_id])
	end

	def logged_in?
		!current_user.nil?
	end
end