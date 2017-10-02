require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../student_class.rb')

class TestStudentClass < MiniTest::Test

  @student_one

  def setup
    @student_one = StudentClass.new("Kynan", 16)
  end

  def test_student_name
    assert_equal("Kynan", @student_one.student_name)
  end

end
