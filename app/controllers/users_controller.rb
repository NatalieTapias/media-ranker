class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    user_id = params[:id].to_i
    @user = User.find_by(id: user)
    if @user.nil?
      flash[:error] = "Could not find user with id: #{params[:id]}"
      redirect_to users_path
    end
  end
end
