require 'test/unit'
require_relative '../../lib/utils/enumerable_utils'

class TestEnumerableUtils < Test::Unit::TestCase
  def test_sum_should_compute_sum_of_all_items
    numbers = [1, 2, 3]

    result = EnumerableUtils.sum(numbers)

    assert_equal(6, result)
  end
end