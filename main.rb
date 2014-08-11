require_relative 'lib/solver'

arguments = ARGV

unless arguments.size == 2
  puts "Missing arguments; usage: main.rb --problem <problem>"
  puts "Enter arguments:"
  arguments = gets.chomp.split(' ')
end

puts "Solving..."

problem = arguments.last.to_i
solver = Solver.new
solution = solver.solve(problem)

puts "Solution for problem #{problem}: #{solution}"

