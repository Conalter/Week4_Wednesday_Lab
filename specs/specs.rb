require 'minitest/autorun'
require 'minitest/rg'
require_relative ("../student.rb")

  class TestStudent < MiniTest::Test

    def setup
        @student1 = Student.new("Jimmy", "Smith", "Gryffindor", 14)

    end

      def test_first_name()
        assert_equal("Jimmy", @student1.first_name)
      end

      def test_last_name()
        assert_equal("Smith", @student1.last_name)
      end

      def test_house()
        assert_equal("Gryffindor", @student1.house)
      end

      def test_age()
        assert_equal(14, @student1.age)
      end

  end # end of class
