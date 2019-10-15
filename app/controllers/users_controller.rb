class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    user_id = session[:user_id] 
    @user = User.find_by(id: user_id)
    # username = params[:user][:username]
    # @user = User.find_by(username: username)
    # if @user.nil?
    #   flash[:error] = "Could not find user with id: #{username}"
    #   redirect_to users_path
    # end
  end

  def login_form
    @user = User.new
  end

  def login
    username = params[:user][:username]
    user = User.find_by(username: username)

    if user
      session[:user_id] = user.id
    else
      user = User.create(username: username)
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in as #{user.username}"
    end

    redirect_to root_path
  end

  def current 
    @current_user = User.find_by(username: session[:user_id])
    
    if !@current_user
      flash[:failure] = "Could not find user: #{@current_user.username}"
      redirect_to users_path
    else
      flash[:success] = "Logged in as #{@current_user.username}"
    end
  end


  def logout
    @current_user = User.find_by(username: params[:user[:username]])
    user_id = @current_user.id
    if user 
      session[:user_id] = nil
      flash[:success] = "Successfully logged out "
    else
      flash[:failure] = "Error logging out"
    end
    redirect_to root_path
  end

end
