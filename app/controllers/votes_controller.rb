class VotesController < ApplicationController
  before_action :current_user

  def index
    @votes = Vote.all
  end

  def new
    @vote = Vote.new
  end

  def create
    work_id = params[:work_id]
    user_id = session[:user_id]

    vote = Vote.new(user_id: user_id, work_id: work_id)
    vote.save
    flash[:success] = "Vote added successfully."
    redirect_to works_path
    return
  end

  def show
  end

end
