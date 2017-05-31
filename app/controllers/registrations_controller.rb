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

end