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

  
  describe "validations" do
    # vote_on_work = votes(:vote_on_work)
    # vote_second_on_work = votes(:vote_second_on_work)
    # it "should validate presence of work_id" do
    #   expect(vote_on_work.user_id).must_equal votes(:vote_on_work).user_id
  

    it "should validate presence of user_id" do
    end

    it "should validate uniqueness of user_id" do
    end
  end

  describe "custom methods" do
  end

end