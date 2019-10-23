class Work < ApplicationRecord
  has_many :votes

  def self.top_ten
    
    array_of_top_ten_works = []
    Vote.tally_up_works
    # return Work.order("RANDOM()").limit(10)
    # find number of votes per work
    # sort works in descending order by vote 
  end

  def self.media_spotlight
    return Work.first
  end

  def self.all_albums
    return Work.where(category: 'album')
  end

  def self.all_movies
    return Work.where(category: 'movie')
  end

  def self.all_books
    return Work.where(category: 'book')
  end
  
  
end
