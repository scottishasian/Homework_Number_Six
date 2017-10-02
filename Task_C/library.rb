class Library

  #attr_accessor :books

  def initialize(books)
    @books = books
  end

#Create a method that list all the books and their corresponding details.

  def view_stock()
    return @books
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

#Create a method that takes in a book title
#and returns only the rental details for that book.

  def rental_details(book_name)
    for rental in @books
      if rental[:title] == book_name
        return rental[:rental_details]
      end
    end
  end

# Create a method that takes in a book title and adds it to
# our book list (Add a new hash for the book with
# the student name and date being left as empty strings)

  def add_book_by_name(book_name)
    @books.push({
      title: book_name,
      rental_details:{
        student_name: "",
        date: ""}
        })
  end

end
