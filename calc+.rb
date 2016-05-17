# class Clac
  @history = []

  def start
    clac
  end

  def continue
    again
  end

  def again
    puts ' '
    puts 'CalculaZOR'
    equation = gets.strip.split(' ')
    if equation[0] == "exit"
      Kernel.exit(false)

    elsif equation[0] == 'D'
      directions
    elsif equation[1] == "+"
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

    elsif equation[1] == "**"
      n = equation[0].to_i
      square = ->(n){n ** 2}
      square.call(n)
      puts square.call(n)

    elsif equation[0] == "sin"
      answer = Math.sin(equation[1].to_i)
      puts answer

    elsif equation[0] == "cos"
      answer = Math.cos(equation[1].to_i)
      puts answer

    elsif equation[0] == "tan"
      answer = Math.tan(equation[1].to_i)
      puts answer

    elsif equation.count == 0 
      puts 'Invalid Input'

    elsif equation == 'exit'
      Kernel.exit(false)
    else
      # Kernel.exit(false)


    # elsif equation[0] == "sin"
    #   puts "Enter opposite side SPACE hypotenuse"
    #   gets.strip.split(' ') = sin
    #   puts "Enter hypotenuse"
    #   gets.strip = hypotenuse
    #   answer = puts opposite_side / hypotenuse
    #   puts answer
    #   # sin = Math.sin(Math::PI/2)
    end
      go = gets.chomp
      if go == ''
        @history << answer
        continue
      elsif go == 'history' && @history.count != 0
        @history << answer
        puts @history
      elsif go == 'last' && @history.count != 0
        @history << answer
        puts @history.last
      elsif go == 'exit'
        Kernel.exit(false)
      end

      continue

      # puts "Do you wish to run this again(y/n)"
      # cont = gets.strip.downcase
      # if cont.downcase == 'y'
      #   continue
      # else
      #   puts 'Invalid Input'
      # end
      #   puts "Thanks for using Calculator+ !"
  end
  
  def directions
      puts "Directions are available any time by typing 'D'"
      puts 'Enter equation with space before and after operator'
      puts 'After first calculation, type ENTER to go again!'
      puts '     Or type history to see your history!'
      puts '     Or type last to see your last answer!'
      puts "Exit is available anytime by typing 'exit'"
      puts ""
      puts ""
      puts "ENTER to begin"
      go = gets.chomp
      if go == ''
        again
      else
        malfunction
      end
  end

  def malfunction
      puts 'Malfunction.......'
      puts '.........'
      puts '.........'
      puts '.........'
      puts 'Please try again'
      start
  end

  def clac
    puts "Calculater! Input equation [+, -, /, *, ()]"
    puts "Square of a number also available! (**)"
    puts ""
    puts "Press ENTER to continue! or D for Directions"
    ans = gets.chomp
    if ans == 'D'
      directions
    elsif ans == ''
      continue

    # equation = gets.strip.split(' ')
    # if equation[1] == "+"
    #   answer = equation[0].to_i + equation[2].to_i
    #   puts answer

    # elsif equation[1] == "-"
    #   answer = equation[0].to_i - equation[2].to_i
    #   puts answer

    # elsif equation[1] == "/"
    #   answer = equation[0].to_i / equation[2].to_i
    #   puts answer

    # elsif equation[1] == "*"
    #   answer = equation[0].to_i * equation[2].to_i
    #   puts answer

    # elsif equation[1] == "**"
    #   n = equation[0].to_i
    #   square = ->(n){n ** 2}
    #   square.call(n)
    #   puts square.call(n)

    # elsif equation[0] == "sin"
    #   answer = Math.sin(equation[1].to_i)
    #   puts answer

    # elsif equation[0] == "cos"
    #   answer = Math.cos(equation[1].to_i)
    #   puts answer

    # elsif equation[0] == "tan"
    #   answer = Math.tan(equation[1].to_i)
    #   puts answer

    # elsif equation.count == 0
    #   puts 'Invalid Input'
    else

      malfunction
      # continue
    # elsif equation[0] == "sin"
    #   puts "Enter opposite side SPACE hypotenuse"
    #   gets.strip.split(' ') = sin
    #   puts "Enter hypotenuse"
    #   gets.strip = hypotenuse
    #   answer = puts opposite_side / hypotenuse
    #   puts answer
    #   # sin = Math.sin(Math::PI/2)
    end

    # puts "Do you wish to run this again(y/n)"
    # cont  = gets.strip.downcase
    # if cont == "y"
    #   start
    # elsif cont == "n"
    # else
    #   puts 'Invalid Input'
    # end
    # puts "Thanks for using Calculator+ !"
  end
# end

start


# def sin
#   puts "Enter opposite side"
#   gets.strip = a
#   puts "Enter adjacent side"
#   gets.strip = b
#   puts "Enter"

# @sin = {opposite_side: "#{a}", hypotenuse: "#{b}"}


# class Car
#   def color
#     @color = "red"
#   end

#   def drive(direction)

#   end

# end
# car = Car.new(color: "red")
# car.drive("forward")