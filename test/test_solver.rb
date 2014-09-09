require 'test/unit'
require_relative '../lib/solver'

class TestSolver < Test::Unit::TestCase
  @solver

  def setup
    @solver = Solver.new
  end

  def teardown
    # Do nothing
  end

  def test_solve_should_choose_problem
    assert_equal(233168, @solver.solve(problem=1))
  end

  def test_solve_should_raise_error
    assert_raise(StandardError) { @solver.solve(problem=798) }
  end

  def test_solve_problem_one
    sum = @solver.solve_problem_one

    assert_equal(233168, sum)
  end

  def test_solve_problem_one_example
    sum = @solver.solve_problem_one_example

    assert_equal(23, sum)
  end

  def test_solve_problem_two_example
    sum = @solver.solve_problem_two_example

    assert_equal(44, sum)
  end
end