require 'test/unit'

require_relative '../../lib/extend/integer'

class TestInteger < Test::Unit::TestCase
  def test_divisible_by_should_return_boolean
    result = 4.divisible_by?(2)

    assert_equal(true, result)
  end

  def test_divisible_by_should_return_false_when_number_is_not_divisible
    result = 4.divisible_by?(3)

    assert_equal(false, result)
  end
end