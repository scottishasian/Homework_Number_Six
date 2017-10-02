require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @thelibrary = Library.new([
        {
        title: "the_martian",
        rental_details:{
          student_name: "James Kirk",
          date: "23/09/2017"}
        },
        {
        title: "leviathan_wakes",
        rental_details:{
          student_name: "Meghan Chapman",
          date: "28/09/2017"}
        }
      ])
  end

  def test_view_stock
    books = @thelibrary.view_stock()
    assert_equal([
        {
        title: "the_martian",
        rental_details:{
          student_name: "James Kirk",
          date: "23/09/2017"}
        },
        {
        title: "leviathan_wakes",
        rental_details:{
          student_name: "Meghan Chapman",
          date: "28/09/2017"}
        }
      ], books)
  end

  def test_find_book_by_name
    book = @thelibrary.find_book_by_name("leviathan_wakes")
    assert_equal("leviathan_wakes", book[:title])
  end

  def test_rental_details
    rental = @thelibrary.rental_details("the_martian")
    assert_equal({
      student_name: "James Kirk",
      date: "23/09/2017"}, rental)
  end

  def test_add_book_by_name
    added = @thelibrary.add_book_by_name("Neverwhere")
    assert_equal(@thelibrary.view_stock, added)
  end

  def test_change_rental_details
    new_rental = @thelibrary.change_rental_details("the_martian", "Hilary Fields", "01/10/2017" )
    assert_equal({
      student_name: "Hilary Fields",
      date: "01/10/2017"}, new_rental)
  end

end
