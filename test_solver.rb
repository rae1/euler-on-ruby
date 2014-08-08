require 'test/unit'
require_relative 'solver'

class TestSolver < Test::Unit::TestCase
  @solver

  def setup
    @solver = Solver.new
  end

  def teardown
    # Do nothing
  end

  def test_solve_should_choose_problem_number
    assert_equal(1, @solver.solve(problem: 1))
  end

  def test_solve_should_raise_not_implemented_error
    assert_raise(StandardError) { @solver.solve(problem: 798) }
  end
end