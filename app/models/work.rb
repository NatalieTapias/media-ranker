class Work < ApplicationRecord

  def self.top_ten
    return Work.order("RANDOM()").limit(10)
  end
  
end
