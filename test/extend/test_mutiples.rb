require 'test/unit'

require_relative '../../lib/extend/multiples'

class TestMultiples < Test::Unit::TestCase
  def test_multiples_should_return_enumerable_of_multiples_under_param
    result = 2.multiples(under=10)

    assert_equal([2, 4, 6, 8], result)
  end

  def test_multiples_should_return_empty_for_invalid_param
    result = 2.multiples(under=-1)

    assert_equal([], result)
  end

  def test_multiples_should_return_enumerable_of_multiples_for_3
    result = 3.multiples(under=10)

    assert_equal([3, 6, 9], result)
  end
end