require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../library.rb')

class TestLibrary < MiniTest::Test

  def setup
    @books = Library.new([
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
    books = @books.view_stock()
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

end
