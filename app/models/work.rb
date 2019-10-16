class Work < ApplicationRecord
  has_many :votes
  # has many users 
  # has up to one vote per user

  def self.top_ten
    return Work.order("RANDOM()").limit(10)
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
