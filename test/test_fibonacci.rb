require 'test/unit'
require_relative '../lib/fibonacci'

class TestFibonacci < Test::Unit::TestCase
  @fibonacci

  def setup
    @fibonacci = Fibonacci.new
  end

  def test_first_10_terms
    series = @fibonacci.first(10)

    assert_equal([1, 2, 3, 5, 8, 13, 21, 34, 55, 89], series)
  end

  def test_under_10
    series = @fibonacci.under(10)

    assert_equal([1, 2, 3, 5, 8], series)
  end
end