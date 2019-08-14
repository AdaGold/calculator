# this is the gold calculator with the float identifier element of platinum.
# get the operation

puts "Welcome to your calculator! What kind of operation would you like to do?"
operation = gets.chomp.downcase
    
# operation logic, accounting for multiple entry types

if operation == "add" || operation == "+" || operation == "addition"
    puts "Great, addition!"
    operation = "add"
elsif operation == "subtract" || operation == "-" || operation == "subtraction"
    puts "Great, subtraction!"
    operation = "sub"
elsif operation == "multiply" || operation == "*" || operation == "multiplication"
    puts "Great, multiplication!"
    operation = "multi"
elsif operation == "divide" || operation == "/" || operation == "division"
    puts "Great, division!"
    operation = "div"
elsif operation == "exponent" || operation == "^" || operation == "power"
    puts "Great, exponents!"
    operation = "exp"
elsif operation == "modulus" || operation == "%" || operation == "mod"
    puts "Great, moduli!"
    operation = "mod"
else
    puts "I'm sorry, I don't think you understand what I'm designed for,"
    operation = "wrong"
end

# get numbers, account for string or nil input, while loop to re-ask for numeric input

if operation != "wrong"
    puts "What would you like your first number to be?"
    num1 = gets.chomp
while num1 != "0" && num1.to_i == 0
    puts "#{num1} is not a valid number. What number would you like?"
    num1 = gets.chomp
end

# changes to float if has a ".", changes to integer if not, accounts for "," in number

if num1.include? "."
    num1 = num1.delete(",").to_f
else
    num1 = num1.delete(",").to_i
end

# repeats process above for the second number in the operation

puts "And what would you like your second number to be?"
num2 = gets.chomp

while num2 != "0" && num2.to_i == 0
    puts "#{num2} is not a valid number. What number would you like?"
    num2 = gets.chomp
end

if num2.include? "."
    num2 = num2.delete(",").to_f
else
    num2 = num2.delete(",").to_i
end

end
    
    # do the math, prints out the function and puts a blank line before it.
    
if operation == "add"
    answer =  num1 + num2
    puts "\n#{num1} + #{num2} = #{answer}"
elsif operation == "sub"
    answer =  num1 - num2
    puts "\n#{num1} - #{num2} = #{answer}"
elsif operation == "multi"
    answer =  num1 * num2
    puts "\n#{num1} * #{num2} = #{answer}"
elsif operation == "div"
    answer =  num1 / num2
    puts "\n#{num1} / #{num2} = #{answer}"
elsif operation == "exp"
    answer =  num1 ** num2
    puts "\n#{num1} ^ #{num2} = #{answer}"
elsif operation == "mod"
    answer =  num1 % num2
    puts "\n#{num1} % #{num2} = #{answer}"
else
    puts "I am unsure of what you are trying to do."
end