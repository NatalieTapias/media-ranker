class VotesController < ApplicationController

  def index
    @votes = Vote.all
  end

  def show
    # find votes
    vote = 
  end

  def new
    @vote = Vote.new
  end

end
