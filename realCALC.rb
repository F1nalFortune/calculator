
  @history = []

  def clac
    puts "Welcome to Calculator+! Input equation [+, -, /, *, ()]"
    puts "Square of a number also available! (**)"
    puts "Please enter both sides of equation below:"
      unless @history.empty?
        puts "Last saved answer:" 
        puts @history.last
      end
    equation = gets.strip.split(' ')
    if equation[1] == "+"
      answer = equation[0].to_i + equation[2].to_i
      puts "Your answer is:"
      puts answer

    elsif equation[1] == "-"
      answer = equation[0].to_i - equation[2].to_i
      puts "Your answer is:"
      puts answer

    elsif equation[1] == "/"
      answer = equation[0].to_i / equation[2].to_i
      puts "Your answer is:"
      puts answer

    elsif equation[1] == "*"
      answer = equation[0].to_i * equation[2].to_i
      puts "Your answer is:"
      puts answer

    elsif equation[1] == "**"
      n = equation[0].to_i
      square = ->(n){n ** 2}
      square.call(n)
      puts "Your answer is:"
      puts square.call(n)

    elsif equation[0] == "sin"
      answer = Math.sin(equation[1].to_i)
      puts "Your answer is:"
      puts answer

    elsif equation[0] == "cos"
      answer = Math.cos(equation[1].to_i)
      puts "Your answer is:"
      puts answer

    elsif equation[0] == "tan"
      answer = Math.tan(equation[1].to_i)
      puts "Your answer is:"
      puts answer
    
    # This shows history if user wants **
    # elsif equation[0] == "history"
    #   puts @history


    end
      puts "Thanks for using Calculator+ !"
      puts "Do you wish to run this again(y/n)"
      response = gets.strip.downcase
      if response == 'y'
        @history << answer
        start
      end
    end
# end
  def start
    # puts @history
    clac
  end

start







# num = gets.to_i
# operator = gets.to_sym
# num2 = gets.to_i
# ​
# num.send(operator, num2)

# class Car
#   def color
#     @color = "red"
#   end

#   def drive(direction)

#   end

# end
# car = Car.new(color: "red")
# car.drive("forward")
