require_relative 'utils/multiples_enumerator'

class Solver
  def solve(problem)
    puts "Solving..."

    case problem
    when 1
      solution = solve_problem_one
    else
      raise StandardError, "Problem number not implemented"
    end
  end

  # If we list all the natural numbers below 10 that are multiples of 3 or 5,
  # we get 3, 5, 6 and 9. The sum of these multiples is 23.
  #
  # Find the sum of all the multiples of 3 or 5 below 1000
  def solve_problem_one
    enumerator = MultiplesEnumerator.new
    multiples = enumerator.enumerate_multiples_of([3, 5], under=1000)
    sum(multiples)
  end

  def solve_problem_one_example
    enumerator = MultiplesEnumerator.new
    multiples = enumerator.enumerate_multiples_of([3, 5], under=10)
    sum(multiples)
  end

  private

  def sum(array)
    array.reduce { |sum, item| sum + item }
  end
end