require "test_helper"

describe Work do
  describe "top_ten" do
    it "should return an array of 10 items" do
      12.times do |i|
        Work.create(title: i.to_s)
      end

      expect(Work.count).must_be :>, 10
      expect(Work.top_ten.length).must_equal 10
    end

    it "should return items in vote_count, desc order " do
      # put in a vote count on the fixture
      # check for correct order
    end
  end

  describe "all_albums" do
    it "should return an array of albums" do
      expect(Work.all_albums.count).must_equal 3
    end

    it "should return only albums" do
      albums = Work.all_albums

      albums.each do |album|
        expect(album.category).must_equal "album"
      end
    end
  end

  describe "all_movies" do
    it "should return an array of movies" do
      expect(Work.all_movies.count).must_equal 2
    end

    it "should return only movies" do
      movies = Work.all_movies

      movies.each do |movie|
        expect(movie.category).must_equal "movie"
      end
    end
  end

  describe "all_books" do
    it "should return an array of books" do
      expect(Work.all_books.count).must_equal 1
    end

    it "should return only books" do
      books = Work.all_books

      books.each do |book|
        expect(book.category).must_equal "book"
      end
    end
  end
end
