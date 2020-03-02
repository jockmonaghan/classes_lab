require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_A')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestStudent < Minitest::Test

  def test_student_name
    school = Student.new("Bob", "INV1")
    assert_equal("Bob", school.student_name)
  end

  def test_cohort_name
    school = Student.new("Bob", "INV1")
    assert_equal("INV1", school.cohort_name)
  end

def test_set_student_name
    school = Student.new("Bob", "INV1")
    school.student_name = "Bill"
    assert_equal("Bill", school.student_name)
  end

def test_set_cohort_name
  school = Student.new("Bob", "INV1")
  school.cohort_name = "INV2"
  assert_equal('INV2', school.cohort_name)
end

def test_student_talk
  speech = []
  school = Student.new("Bob", "INV1")
  speech.push("I can talk!")
end

def test_favourite_language
  language = []
  school = Student.new("Bob", "INV1")
  language.push("Ruby")
end













end
