class ApplicationController < ActionController::Base


  private
  def current_user
    # error handling for when my cookies store session info that doesn't exist in db
    @current_user = User.find_by(id: session[:user_id])
    return @current_user
  end
end
