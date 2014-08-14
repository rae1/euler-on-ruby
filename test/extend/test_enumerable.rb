require 'test/unit'
require_relative '../../lib/extend/enumerable'

class TestEnumerable < Test::Unit::TestCase
  def test_sum_should_compute_sum_of_all_items
    numbers = [1, 2, 3]

    result = numbers.sum

    puts result
    assert_equal(6, result)
  end
end