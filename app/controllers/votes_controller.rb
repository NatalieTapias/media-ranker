class VotesController < ApplicationController
  before_action :current_user

  def index
    @votes = Vote.all
  end

  def new
   @vote = Vote.new
  end

  def create
    vote = Vote.new(user_id: , work_id: )
  end

  def show
  end

end
