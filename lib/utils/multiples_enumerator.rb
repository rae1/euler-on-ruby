class MultiplesEnumerator
  def enumerate_multiples_of(numbers=[], under=100)
    upper = under - 1
    (1..upper).select do |multiple|
      numbers.any? { |number| multiple % number == 0 }
    end
  end
end