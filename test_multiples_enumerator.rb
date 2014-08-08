require 'test/unit'
require_relative 'multiples_enumerator'

class TestMultiplesEnumerator < Test::Unit::TestCase
  @multiples_enumerator

  def setup
    @multiples_enumerator = MultiplesEnumerator.new
  end

  def test_enumrate_using_no_multiples_yields_empty_array
    numbers = []

    result = @multiples_enumerator.enumerate_multiples_of(numbers)

    puts_multiples_enumeration_result(numbers, result)
    assert_equal([], result)
  end

  def test_enumrate_using_multiples_of_5
    numbers = [5]

    result = @multiples_enumerator.enumerate_multiples_of(numbers, under=10)

    puts_multiples_enumeration_result(numbers, result)
    assert_equal([5], result)
  end

  def test_enumrate_using_multiples_of_3_or_5
    numbers = [3, 5]

    result = @multiples_enumerator.enumerate_multiples_of(numbers, under=10)

    puts_multiples_enumeration_result(numbers, result)
    assert_equal([3, 5, 6, 9], result)
  end

  private

  def puts_multiples_enumeration_result(numbers, multiples)
    puts "Multiples of #{numbers.join(' or ')}: #{multiples.join(', ')}"
  end
end