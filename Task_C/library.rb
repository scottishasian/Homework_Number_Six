class Library

  #attr_accessor :books

  def initialize(books)
    @books = books
  end

  def view_stock()
    return @books
  end

end
