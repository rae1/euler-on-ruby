class Fixnum
  def divisible_by?(other)
    self % other == 0
  end
end