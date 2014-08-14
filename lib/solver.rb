require_relative 'extend/enumerable'
require_relative 'extend/multiples'

class Solver
  def solve(problem)
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
    under = 1000
    3.multiples(under).sum + 5.multiples(under).sum - 15.multiples(under).sum
  end

  def solve_problem_one_example
    under = 10
    3.multiples(under).sum + 5.multiples(under).sum
  end
end