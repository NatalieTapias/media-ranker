class Vote < ApplicationRecord
  has_one :work
  has_one :user
 
  # def self.number_of_votes(work)
  #   work_id = work.id 
  #   return Vote.where(work_id: work_id).count
  # end

  def self.top_ten
    return Vote.order_by(work_id).limit(10)
  end

  # def number_of_votes(work)
  #   work_id = work.id
  #   return Vote.where(category: 'album')
  # end

  # def self.all_movies
  #   return Work.where(category: 'movie')
  # end

  # def self.all_books
  #   return Work.where(category: 'book')
  # end
end
