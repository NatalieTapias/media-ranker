class User < ApplicationRecord
  has_many :votes
  # unique pairing of user and work
  # a user has up to one vote per work
  # has_one :vote => through :work
end
