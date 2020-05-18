require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_a')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeClanStudent < MiniTest::Test

    def test_student_name
        student = CodeClanStudent.new("Sara", "E40")
        assert_equal("Sara", student.name())
    end

    def test_cohort
        student = CodeClanStudent.new("Sara", "E40")
        assert_equal("E40", student.cohort())
    end

    def test_can_change_name
        student = CodeClanStudent.new("Sara", "E40")
        student.change_name("Klaus")
        assert_equal("Klaus", student.name())
    end

    def test_can_change_cohort
        student = CodeClanStudent.new("Sara", "E40")
        student.change_cohort("E39")
        assert_equal("E39", student.cohort())
    end

    def test_student_can_talk
        student = CodeClanStudent.new("Sara", "E40")
        assert_equal("I can talk", student.student_talks("I can talk"))
    end

end