
class Author
  attr_reader :books
  def initialize(first_name:, last_name:)
    @first_name = first_name
    @last_name = last_name
    @books = []
  end

  def add_book(new_title, new_publication_date)

    new_book_through_author = {author_first_name: @first_name,
                                author_last_name: @last_name,
                                title: new_title,
                                publication_date: new_publication_date}
    book_to_put_in = Book.new(new_book_through_author)
    @books << book_to_put_in

  end

  

end
