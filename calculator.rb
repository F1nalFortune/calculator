def calculator(operator, left_hand, right_hand)
  if operator == "+"
    answer = left_hand + right_hand
    # puts "#{left_hand} + #{right_hand} = "
  elsif operator == "-" 
    answer = left_hand - right_hand
    # puts "#{left_hand} - #{right_hand} = "
  elsif operator == "*" 
    answer = left_hand * right_hand
    # puts "#{left_hand} * #{right_hand} = "
  elsif operator == "/" 
    answer = left_hand / right_hand
    # puts "#{left_hand} / #{right_side} = "
  else 
    puts "Error! Follow the directions xD"
  end
      puts "Your answer is:"
      answer
end


puts "Welcome to Calculator! Input calcuations (+, -, *, /.)"
puts "Left hand side:"
left_hand = gets.strip.to_i

puts "Operator:"
operator = gets.strip

puts "Right hand side:"
right_hand = gets.strip.to_i

puts calculator(operator, left_hand, right_hand)

# user_input = gets.strip.split('')




# puts "Welcome to Calculator+! Input equation (+, -, /, *)"
# puts "Both sides of equation AND operator:"
# equation = gets.strip.split(' ')

# if equation[1] = "+"
#   answer = equation[0].to_i + equation[2].to_i
#   puts answer

# elsif equation[1] = "-"
#   answer = equation[0].to_i - equation[2].to_i
#   puts answer

# elsif equation[1] = "/"
#   answer = equation[0].to_i / equation[2].to_i
#   puts answer

# elsif equation[1] = "*"
#   answer = equation[0].to_i * equation[2].to_i
#   puts answer
# end

# puts "Thanks for using Calculator+ !"















