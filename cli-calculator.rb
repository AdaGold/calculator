# BASELINE

# The program should ask the user for an operation (string or numeric symbol) and two numbers.

# PRIMARY REQUIREMENTS

# The program should use the input operation and two numbers to provide the result of applying the operation to the two numbers.


def calculate(number1, number2, operation)
     case operation
          when "add", "+"
           puts "Your end result is #{number1} + #{number2} = #{number1 + number2}."
          when "subtract", "-"
           puts "Your end result is #{number1} - #{number2} = #{number1 - number2}."
          when "multiply", "*"
           puts "Your end result is #{number1} * #{number2} = #{number1 * number2}."
          when "divide", "/"
           puts "Your end result is #{number1} / #{number2} = #{number1 / number2}."
     end
end

numbers = Array.new
print "What sort of calculation would you like to do ( add , subtract , multiply or divide )? "

operations = %w[add + subtract - multiply * divide /]

operation = gets.chomp

until operations.include?(operation)
     puts "You've four options. Pick one. "
     puts "( add , subtract , multiply or divide )"
     operation = gets.chomp.downcase
end

puts "What two whole numbers (1 - 100) would you like to #{operation}? "

2.times do | input |
     print "##{input + 1}: "
     number = gets.chomp.to_i

     until (1..100).to_a.include?(number)
          puts "1 through 100. Pick one. "
          print "##{input + 1}: "
          number = gets.chomp.to_i
     end

     numbers << number
end

number1 = numbers[0]
number2 = numbers[1]

calculate(number1, number2, operation)

puts "\n"

# TEST & VERIFY
# ✓ The program adds numbers with both add and +.
# ✓ The program subtracts numbers with both subtract and -.
# ✓ The program multiply numbers with both multiply and *.
# ✓ The program divides numbers with both divide and /.
# ✓ The program handles divide when attempting to divide by zero.
# ✓ The program handles erroneous input. For example the user might enter clown when asked to enter a number.
# ✓ The program also needs to handle erroneous operators.

#OPTIONAL ENHANCEMENTS

# ✓ Print out the formula in addition to the result, i.e. 2 + 2 = 4
# (Pass) Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16).
# (Pass) Add support for the modulo operator (10 % 3 = 1).
# ✓ Gracefully handle unexpected user input:
# (Pass) What happens if the user input is nil (i.e., the user just pressed enter)?
# ✓ What happens if the user tries to add hotdog to elephant?


def calculate( number1, number2, operation )
     case operation
          when "add", "+"
           puts "Your end result is #{number1} + #{number2} = #{number1 + number2}."
          when "subtract", "-"
           puts "Your end result is #{number1} - #{number2} = #{number1 - number2}."
          when "multiply", "*"
           puts "Your end result is #{number1} * #{number2} = #{number1 * number2}."
          when "divide", "/"
           puts "Your end result is #{number1} / #{number2} = #{number1 / number2}."
     end
end

numbers = Array.new
print "What sort of calculation would you like to do ( add , subtract , multiply or divide )? "

operations = %w[add + subtract - multiply * divide /]

operation = gets.chomp

until operations.include?(operation)
     print "Add. Subtract. Multiply. Or divide. You've four options. Pick one: "
     operation = gets.chomp.downcase
end

puts "What two numbers (1 - 100) would you like to #{operation}? "

2.times do | input |
     print "##{input + 1}: "
     number = gets.chomp.to_f

     until number < 100 && number > 0
          print "(Sigh.) 1 through 100. Pick one: "
          number = gets.chomp.to_f
     end

     if number - number.floor > 0
          numbers << number

          elsif number - number.floor == 0
               numbers << number.to_i
     end
end

number1 = numbers[0]
number2 = numbers[1]

calculate(number1, number2, operation)

puts "\n"

# ✓ Make your program know when it needs to return an integer versus a float.

# TODO

# Add support for parentheticals, i.e. 10 / (5 + 5) = 1.
