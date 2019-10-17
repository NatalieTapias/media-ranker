class RemoveVoteFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :users, :vote, foreign_key: true
  end
end
