class SessionsController < Devise::SessionsController
	# def create
	# 	if user = User.authenticate(params[:email], params[:password])
	# 		session[:user_id] = user.id
	# 		redirect_to videos_path
	# 	else
	# 		flash.now[:alert] = "Invalid login/password combination"
	# 		render :action => 'new'
	# 	end
	# end

	# def destroy
	# 	reset_session
	# 	redirect_to videos_path
	# end

	def create
  # ...
  session[:current_user_id] = @user.id
  # ...
end
def index
  current_user = User.find_by_id(session[:current_user_id])
  # ...
end
end