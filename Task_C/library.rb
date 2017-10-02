class Library

  #attr_accessor :books

  def initialize(books)
    @books = books
  end

#Create a method that list all the books and their corresponding details.

  def view_stock()
    return @books
    puts @books
  end

#Create a method that takes in a book title and returns all of the information
#about that book.

  def find_book_by_name(book_name)
    for title in @books
      if title[:title] == book_name
        return title
      end
    end
  end

end
