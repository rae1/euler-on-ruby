require 'test/unit'
require_relative 'solver_one'

class TestSolverOne < Test::Unit::TestCase
  @solver_one

  def setup
    @solver_one = SolverOne.new
  end

  def test_solve
    sum = @solver_one.solve

    assert_equal(23, sum)
  end

  def test_solve_example
    sum = @solver_one.solve_example

    assert_equal(23, sum)
  end
end