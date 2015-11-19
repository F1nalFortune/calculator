puts "Welcome to Calculator+! Input equation (+, -, /, *)"
puts "Both sides of equation AND operator:"
equation = gets.strip.split(' ')

if equation[1] == "+"
  answer = equation[0].to_i + equation[2].to_i
  puts answer

elsif equation[1] == "-"
  answer = equation[0].to_i - equation[2].to_i
  puts answer

elsif equation[1] == "/"
  answer = equation[0].to_i / equation[2].to_i
  puts answer

elsif equation[1] == "*"
  answer = equation[0].to_i * equation[2].to_i
  puts answer
end

puts "Thanks for using Calculator+ !"