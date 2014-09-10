class Fibonacci
  def first(take)
    fibonacci.first(take)
  end

  def under(under)
    fibonacci.take_while{ |term| term < under }
  end

  def fibonacci
    previous, current = 1, 2
    Enumerator.new do |y|
      y.yield(1)
      y.yield(2)

      loop do
        previous, current = current, previous + current
        y.yield(current)
      end
    end
  end
end