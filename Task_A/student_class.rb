class StudentClass
  #attr_accessor :student_name,:cohort_number

  def initialize(student_name, cohort_number)
    @student_name = student_name
    @cohort_number = cohort_number
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
    return "What is a computer?" if @student_name == "Kynan"
  end

  def favourite_language(language)
  return "I love #{language}" if @student_name == "Kynan"
  return "I love #{language}" if @student_name == "Josie"
  end





end
