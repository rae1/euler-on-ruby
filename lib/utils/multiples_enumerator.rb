require_relative '../extend/integer'

class MultiplesEnumerator
  def enumerate_multiples_of(numbers=[], under=100)
    upper = under - 1
    (1..upper).select do |multiple|
      numbers.any? { |number| multiple.divisible_by?(number) }
    end
  end
end