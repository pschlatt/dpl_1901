require './test/test_helper'

class LibraryTest < Minitest::Test

  def setup
    @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
    @harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})

    @fifth_season = @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    @kingdoms = @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    @mockingbird = @harper_lee.add_book("To Kill a Mockingbird", "July 11, 1960")

    @dpl = Library.new
  end

  def test_instance_of_library
    assert_instance_of Library, @dpl
  end

  def test_initial_collection
    assert_equal [], @dpl.books
  end

  def test_add_to_collection
    @dpl.add_to_collection(@fifth_season)
    assert_equal [@fifth_season], @dpl.books
  end

  def test_add_more_books_to_collection
    @dpl.add_to_collection(@mockingbird)
    @dpl.add_to_collection(@kingdoms)
    assert_equal [@mockingbird, @kingdoms], @dpl.books
  end

  def test_if_book_is_included
    @dpl.add_to_collection(@mockingbird)
    @dpl.add_to_collection(@kingdoms)
    assert_equal true, @dpl.include?("To Kill a Mockingbird")
  end


end

# > dpl.include?("To Kill a Mockingbird")
# # => true
#
# > dpl.include?("A Connecticut Yankee in King Arthur's Court")
# # => false
#
# > dpl.card_catalogue
# # NOTE:this method returns an array of books in alphabetical order by author's last name
# # => [#<Book:0x007f98a9c6ace8 @author_last_name="Jemisin"...>, #<Book:0x007fb410ea56e8 @author_last_name="Jemisin"...>, #<Book:0x007fb410e8e1f0 @author_last_name="Lee"...> ]
