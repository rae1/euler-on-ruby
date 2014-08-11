class EnumerableUtils
  def self.sum(enumerable)
    enumerable.reduce { |sum, item| sum + item }
  end
end