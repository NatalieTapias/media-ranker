require "test_helper"

describe Vote do
  let (:vote_on_work) = votes(:vote_on_work)

  let (:vote_second_on_work) = votes(:vote_second_on_work)
  
  describe "relations" do
    it "should have one user" do
      expect(vote_on_work.user_id).must_equal 1
      expect(vote_second_on_work.user_id).must_equal 1
    end

   it "should have one work" do
    expect(vote_on_work.work_id).must equal 1
    expect(vote_second_on_work.work_id).must equal 1
   end

  end

  describe "validations" do
    it "should validate presence of work_id" do
    end

    it "should validate presence of user_id" do
    end

    it "should validate uniqueness of user_id" do
    end
  end

  describe "custom methods" do
  end
end
