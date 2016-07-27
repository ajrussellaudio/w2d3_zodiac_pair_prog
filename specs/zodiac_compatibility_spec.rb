require "minitest/autorun"
require "minitest/rg"
require_relative "../zodiac_compatibility"

class TestZodiacCompatibility < MiniTest::Test

  def setup
    @pavlos = "Fire"
    @linnea = "Air"
    @alan = "Fire"
    @marj = "Water"
    @vgood_comparer = Comparer.new(@pavlos, @linnea)
    @bad_comparer = Comparer.new(@pavlos, @alan)
  end

  def test_can_compare_signs__vgood
    assert_equal("Very good", @vgood_comparer.comparison)
  end

  def test_can_compare_signs__bad
    assert_equal("Bad", @bad_comparer.comparison)
  end

end