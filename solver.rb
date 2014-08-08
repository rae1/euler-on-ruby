class Solver
  def solve(problem: 1)
    case problem
    when 1
      puts "Solve problem #1"
      problem
    else
      raise StandardError, "Problem number not implemented"
    end
  end
end