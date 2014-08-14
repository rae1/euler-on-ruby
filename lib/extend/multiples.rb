require_relative 'integer'

class Integer
  def multiples(under=100)
    upper = under - 1
    (1..upper).select { |multiple| multiple.divisible_by?(self) }
  end unless method_defined?(:multiples)
end