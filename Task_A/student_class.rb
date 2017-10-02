class StudentClass
  #attr_accessor :student_name,:cohort_number

  def initialize(student_name, cohort_number, fav_language)
    @student_name = student_name
    @cohort_number = cohort_number
    @fav_language = fav_language
  end

  def student_name
    return @student_name
  end

  def cohort_number
    return @cohort_number
  end

  def change_name(new_name)
    @student_name = new_name
  end

  def change_cohort(new_cohort)
    @cohort_number = new_cohort
  end

  def student_quote
    return "What is a computer?" if @cohort_number == 16
  end





end
