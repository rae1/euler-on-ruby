class Integer
  def divisible_by?(other)
    self % other == 0
  end unless method_defined?(:divisible_by?)
end