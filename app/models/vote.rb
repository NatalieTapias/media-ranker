class Vote < ApplicationRecord
  has_one :work
  has_one :user

  validates_uniqueness_of :user_id


  def self.top_ten
    return Work.order("RANDOM()").limit(10)
  end

  def number_of_votes(work)
    work_id = work.id
    return Vote.where(category: 'album')
  end

  def self.all_movies
    return Work.where(category: 'movie')
  end

  def self.all_books
    return Work.where(category: 'book')
  end
end
