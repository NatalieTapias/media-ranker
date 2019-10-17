class HomepagesController < ApplicationController

  def index
    @works = Work.all
    @top_ten = Work.top_ten
    @movies = Work.all_movies
    @albums = Work.all_albums
    @books = Work.all_books
    @current_user = current_user
  end

end
