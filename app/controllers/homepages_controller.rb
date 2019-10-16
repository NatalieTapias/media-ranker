class HomepagesController < ApplicationController

  def index
    @works = Work.all
    @top_ten = Work.top_ten
  end

end
