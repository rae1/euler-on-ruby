module Enumerable
  def sum
    reduce { |sum, item| sum + item }
  end unless method_defined?(:sum)
end