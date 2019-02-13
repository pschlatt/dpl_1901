require './test/test_helper'

class AuthorTest < Minitest::Test

  def setup
     @nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
  end

  def test_instance_of_author
    assert_instance_of Author, @nk_jemisin
  end

  def test_initial_books_by_author
    assert_equal [], @nk_jemisin.books
  end

  def test_add_book_to_author
    @nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
    assert_equal @nk_jemisin.add_book("The Fifth Season", "November 3, 2015"), @nk_jemisin.books
  end

  def test_add_another_book
     @nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
    assert_equal @nk_jemisin.add_book("The Fifth Season", "November 3, 2015") , @nk_jemisin.books
  end

end


# > require "./lib/author"
# # => true
#
# > nk_jemisin = Author.new({first_name: "N.K.", last_name: "Jemisin"})
# # => #<Author:0x007fb410ada400>
#
# > nk_jemisin.books
# # => []
#
# > nk_jemisin.add_book("The Fifth Season", "November 3, 2015")
# # => #<Book:0x007f98a9c6ace8 @author_first_name="N.K.", @author_last_name="Jemisin", @publication_date="2015", @title="The Fifth Season">
#
# > nk_jemisin.books
# # => [#<Book:0x007f98a9c6ace8 @author_first_name="N.K.", @author_last_name="Jemisin", @publication_date="2015", @title="The Fifth Season">]
#
# > nk_jemisin.add_book("The Hundred Thousand Kingdoms", "2010")
# #<Book:0x007f98a9c6ad48 @author_first_name="N.K.", @author_last_name="Jemisin", @publication_date="2010", @title="The Hundred Thousand Kingdoms">
#
# > nk_jemisin.books
# # => [
#       #<Book:0x007f98a9c6ace8 @author_first_name="N.K.", @author_last_name="Jemisin", @publication_date="2015", @title="The Fifth Season">,
#       #<Book:0x007f98a9c6ad48 @author_first_name="N.K.", @author_last_name="Jemisin", @publication_date="2010", @title="The Hundred Thousand Kingdoms">
#     ]
