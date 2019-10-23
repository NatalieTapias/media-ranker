require "test_helper"

describe VotesController do

  describe "guest user" do
    it "should not allow user to vote for a work" do
      expect {
        post work_votes_path(works(:movie_one))
      }.wont_change "Vote.count"
    end
  end

  describe "logged-in user" do
    before do 
      perform_login
    end

    it "should allow user to vote for a work" do
      expect {
        post work_votes_path(works(:movie_one))
      }.must_change "Vote.count", 1
    end

    it "should not let user vote twice for same work" do
      expect {
        post work_votes_path(works(:movie_one))
      }.must_change "Vote.count", 1

      expect {
        post work_votes_path(works(:movie_one))
      }.wont_change "Vote.count"
    end

    it "should allow users to vote for multiple works" do
      expect {
        post work_votes_path(works(:movie_one))
      }.must_change "Vote.count", 1

      expect {
        post work_votes_path(works(:movie_two))
      }.must_change "Vote.count", 1
    end
  end

  
  # A guest user cannot vote if they have not logged in
  # A logged-in user can vote for a work they haven't already voted for
  # A logged-in user cannot vote for a work they have previously voted for

end
