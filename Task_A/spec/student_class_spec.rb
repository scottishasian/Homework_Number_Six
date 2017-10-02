require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../student_class.rb')

class TestStudentClass < MiniTest::Test

  @student_one

  def setup
    @student_one = StudentClass.new("Kynan", 16, "Python")
  end

  def test_student_name
    assert_equal("Kynan", @student_one.student_name)
  end

  def test_cohort_number
    assert_equal(16, @student_one.cohort_number)
  end

  def test_change_name
    @student_one.change_name("Jules")
    assert_equal("Jules", @student_one.student_name)
  end

  def test_change_cohort
    @student_one.change_cohort(20)
    assert_equal(20, @student_one.cohort_number)
  end

  def test_student_quote
    @student_one.student_quote()
    assert_equal("What is a computer?", @student_one.student_quote)
  end

end
