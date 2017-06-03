class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  unless @user
    flash[:error] = "User not found"
    redirect :action => :index
  end
  @user_posts = @user.ideas
  end
end
