class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(book)
    @books << book
  end

 def include?(title)
   is_it = nil
   @books.each do |titles|
   if titles == title
    is_it = true
   else
     is_it = false
   end
   return is_it
  end
 end
end
