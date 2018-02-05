require'minitest/autorun'
require_relative'../cc_student.rb'

# Create a method that takes in a students favourite programming language and
# returns it as part of a string (eg. student1.say_favourite_language("Ruby") ->
# "I love Ruby").

class TestCCStudent < Minitest::Test

  def setup
    @cc_student_1 = Student.new("Kate", 19)
  end

  def test_get_name
    assert_equal("Kate", @cc_student_1.name())
  end

  def test_get_cohort
    assert_equal(19, @cc_student_1.cohort())
  end

  def test_set_name
    @cc_student_1.name = "John"
    assert_equal("John", @cc_student_1.name())
  end

  def test_set_cohort
    @cc_student_1.cohort = 20
    assert_equal(20, @cc_student_1.cohort())
  end

  def test_chat
    assert_equal("I can talk!", @cc_student_1.talk())
  end

  def test_fave_language
    assert_equal("My favourite language is Ruby", @cc_student_1.fave_language("Ruby"))
  end

end
