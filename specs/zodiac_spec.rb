require "minitest/autorun"
require "minitest/rg"
require_relative "../zodiac"

class TestZodiac < MiniTest::Test

  def setup
    @pavlos = Person.new("05-08-1988")
    @linnea = Person.new("30-05-1985")
    @born_on_cusp = Person.new("24-05-1990")
  end

  def test_person_has_birth_date
    assert_equal("05-08-1988", @pavlos.birth_date)
  end

  def test_can_find_zodiac_sign
    assert_equal({:sign=>"Leo", :decan=>"2nd decan"}, @pavlos.zodiac_sign)
  end

  def test_can_find_zodiac_sign__cusp
    assert_equal({:sign=>"Gemini", :decan=>"1st decan"}, @born_on_cusp.zodiac_sign)
  end

  def test_change_string_to_time
    assert_equal( "1988-08-05 00:00:00 +0100", @pavlos.birth_date_as_time.to_s)
  end

  def test_can_find_element
    assert_equal("Fire", @pavlos.element_sign)
  end

end