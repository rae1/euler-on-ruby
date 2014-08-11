require_relative 'solver_one'

class Solver
  def solve(problem)
    puts "Solving..."

    case problem
    when 1
      solver = SolverOne.new
      puts "Solution for problem 1: #{solver.solve}"
    else
      raise StandardError, "Problem number not implemented"
    end
  end
end