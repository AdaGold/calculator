# This is a calculator program

# Define methods

def add(num_one, num_two)
  return num_one + num_two
end

def subtract(num_one, num_two)
  return num_one - num_two
end

def multiply(num_one, num_two)
  return num_one * num_two
end

def divide(num_one, num_two)
  return num_one / num_two
end

def exponent(num_one, num_two)
  return num_one ** num_two
end

possible_operations = ["ADD", "SUBTRACT", "DIVIDE", "MULTIPLY", "EXPONENT", "+", "-","/", "*", "^"]

# Get user input for the operation to perform
# Ask for user input until operation is valid
puts "Which operation would you like to perform?"
print "(Add, Subtract, Multiply, Divide, Exponent) "
operation = gets.chomp.upcase
  until possible_operations.include?(operation)
    puts "That is an invalid operation. Try again"
    operation = gets.chomp.upcase
  end

# Get user input for numbers
# Ask for input until user enter integer
puts "Okay, please enter a number."
  num_one = gets.chomp
    while num_one.to_i.to_s != num_one
      puts "That is not a valid number. Please try again."
      num_one = gets.chomp
    end

num_one = num_one.to_i


puts "Please enter another number."
num_two = gets.chomp

while num_two.to_i.to_s != num_two
  puts "That is not a valid number. Please try again."
  num_two = gets.chomp
end

num_two = num_two.to_i

# Perform calculations
if operation == "ADD" || operation == "+"
  sum = add(num_one, num_two)
  puts "#{num_one} + #{num_two} = #{sum}"
  return sum
elsif operation == "SUBTRACT" || operation == "-"
  sum = subtract(num_one, num_two)
  puts "#{num_one} - #{num_two} = #{sum}"
  return sum
elsif operation == "MULTIPLY" || operation == "*"
  sum = multiply(num_one, num_two)
  puts "#{num_one} * #{num_two} = #{sum}"
  return sum
elsif operation == "DIVIDE" || operation == "/"
  sum = divide(num_one, num_two)
  puts "#{num_one} / #{num_two} = #{sum}"
  return sum
elsif operation == "EXPONENT" || operation == "^"
  sum = exponent(num_one, num_two)
  printing_exponent = num_two - 1
  print "#{num_one}^#{num_two} = "
  print num_one
  printing_exponent.times { print " * #{num_one}"}
  print " = #{sum}\n"
  return sum
end
