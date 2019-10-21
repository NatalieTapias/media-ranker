require "test_helper"

describe Vote do
  
  describe "relations" do
    it "has one user" do
      vote_on_work = votes(:vote_on_work)
      vote_second_on_work = votes(:vote_second_on_work)

      expect(User.find_by(id: vote_on_work.user_id)).must_be_instance_of User
      expect(User.find_by(id: vote_second_on_work.user_id)).must_be_instance_of User
     
    end

    it "a vote should have one work" do
      vote_on_work = votes(:vote_on_work)
      vote_second_on_work = votes(:vote_second_on_work)

      expect(Work.find_by(id: vote_on_work.work_id)).must_be_instance_of Work
      expect(Work.find_by(id: vote_second_on_work.work_id)).must_be_instance_of Work
    end
  end

  describe "top_ten" do
    it "should return a collection of 10 votes" do
      
      3.times do |i|
        Vote.create(user_id: i+1, work_id: 3)
      end

      2.times do |i|
        Vote.create(user_id: i+1, work_id: 2)
      end

      5.times do |i|
        Vote.create(user_id: i+1, work_id: 5)
      end

      
      expect(Vote.top_ten.length).must_equal 10
      
    end
  end



end