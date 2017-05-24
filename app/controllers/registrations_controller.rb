class RegistrationsController < Devise::RegistrationsController

	private

	# def index
	# 	@instagram = Instagram.user_recentmedia("https://api.instagram.com/v1/users/USER-ID/?access_token=ACCESS-TOKEN", {:count=>1})
	# end

	# def callback
	# 	response = Instagram.get_access_token(params[:code], redirect_uri: ENV['REDIRECT_URI'])
	# 	session[:access_token] = response.access_token
	# 	redirect_to root_path
	# end

	def sign_up_params
		params.require(:user).permit(:dp, :firstname, :last_name, :location, :website, :instagramid, :bio, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:dp, :firstname, :last_name, :location, :website, :instagramid, :bio, :email, :password, :password_confirmation, :current_password)
	end
end