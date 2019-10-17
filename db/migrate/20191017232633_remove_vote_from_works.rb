class RemoveVoteFromWorks < ActiveRecord::Migration[5.2]
  def change
    remove_reference :works, :votes, foreign_key: true
  end
end
