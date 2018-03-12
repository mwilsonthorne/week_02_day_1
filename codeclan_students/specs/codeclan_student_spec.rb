require('minitest/autorun')
require_relative('../codeclan_student.rb')

class TestCodeclanStudent < Minitest::Test
  # def test_student_name__getter
  #   codeclan_student = CodeclanStudent.new("Matt", "E21")
  #   assert_equal("Matt", codeclan_student.name)
  #   #   student = {
  #   #     name: "Matt",
  #   #     cohort: "E21"
  #   #   }
  #   # assert_equal("Matt", get_student_name(student))
  # end
  #
  # def test_student_cohort__getter
  #   codeclan_student = CodeclanStudent.new("Matt", "E21")
  #   assert_equal("E21", codeclan_student.cohort)
  # end

  def test_set_student_name
    codeclan_student = CodeclanStudent.new("Matt", "E21")
    codeclan_student.name="Matthew"
    assert_equal("Matthew", codeclan_student.name)
  end

  def test_set_student_cohort
    codeclan_student = CodeclanStudent.new("Matt", "E21")
    codeclan_student.cohort="E20"
    assert_equal("E20", codeclan_student.cohort)
  end

  def test_set_talk
    codeclan_student = CodeclanStudent.new("Matt", "E21")
    result = codeclan_student.speech()
    assert_equal("I can talk", result)
  end

  def test_fav_language
    codeclan_student = CodeclanStudent.new("Matt", "E21")
    result = codeclan_student.fav_language("Ruby")
    assert_equal("I love Ruby", result)
  end

end
