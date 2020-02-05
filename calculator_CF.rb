#Creates a method to check numbers that are entered below for (a) that no letters are included and (b) if the number is a float or an integer
def number_check(number)
  if number.match(/[a-zA-Z]+/)
    puts "Nope. Those are letters, silly. Let's try again. What number would you like?"
    number = gets.chomp
  end
  if number.include? (".")
    number = number.to_f
  else
    number = number.to_i
  end
end

puts
puts "EVERYBODY MATH NOW! 
math. 
mathmathmathmath. 
mathmathmathmath. 
math. math. math. 
EVERYBODY MATH NOW!"
puts
puts "Welcome to the calculator. Let's math! Which of the following would you like to do?
        Add (+)
        Subtract (-)
        Multiply (*)
        Divide (/)
        Exponentiation (**)
        Modulo (%)
    Please enter the name or symbol that represents your choice."

# [Required] The program should accept both the name and the symbol for each possible operation.
math_options = ["add", "+", "subtract", "-", "multiply", "*", "divide", "/", "exponentiation", "**", "modulo", "%"]

#[Optional] Add support for handling all cases (uppercase, capitals) for the operations, so that ADD and add and Add (and other combinations) are handled in the same way
# Handled using downcase; other chomps follow this standard as well
user_choice = gets.chomp.to_s.downcase

#Checks to make sure user entry is valid and [Optional] outputs error if not
#[Optional] repeats prompt until valid input is given
until math_options.include? (user_choice) 
  puts "NO WAY! That's not any kind of math I know. Try again."
  user_choice = gets.chomp.to_s.downcase
end

puts "Nice choice! I love that one. Math. What two numbers would you like to use?"

user_numbers = []

2.times do |num|
  puts "Enter your number here --->"
  number_entry = number_check(gets.chomp)
  user_numbers << number_entry
end

puts "Spectacular, please hold. [INSERT DIAL UP NOISE HERE]"

# [Required] The program should have support for these four operations: addition, subtraction, multiplication, and division.
if user_choice == "add" || user_choice == "+"
  #[Optional] print formula in addition to result
  puts "Formula: #{user_numbers[0]} + #{user_numbers[1]}"
  puts "Answer: #{user_numbers[0] + user_numbers[1]}"
elsif user_choice == "subtract" || user_choice == "-"
  puts "Formula: #{user_numbers[0]} - #{user_numbers[1]}"
  puts "Answer: #{user_numbers[0] - user_numbers[1]}"
elsif user_choice == "multiply" || user_choice == "*"
  puts "Formula: #{user_numbers[0]} * #{user_numbers[1]}"
  puts "Answer: #{user_numbers[0] * user_numbers[1]}"
elsif user_choice == "divide" || user_choice == "/"
  if user_numbers[1] == 0
    puts "Sorry, can't divide by 0. You should know better! Let's try a new number. Enter it here:"
    new_number = number_check(gets.chomp)
    user_numbers[1] = new_number
  end
  puts "Formula: #{user_numbers[0]} / #{user_numbers[1]}"
  puts "Answer: #{user_numbers[0] / user_numbers[1]}"
# [Optional] Add support for computing exponents (2^4 = 2 * 2 * 2 * 2 = 16)
elsif user_choice == "exponent" || user_choice == "**"
  puts "Formula: #{user_numbers[0]} ^ #{user_numbers[1]}"
  puts "Answer: #{user_numbers[0] ** user_numbers[1]}"
# [Optional] Add support for the modulo operator (10 % 3 = 1)
elsif user_choice == "modulo" || user_choice == "%"
  if user_numbers[1] == 0
    puts "Sorry, can't divide by 0. You should know better! Let's try a new number. Enter it here:"
    new_number = number_check(gets.chomp)
    user_numbers[1] = new_number
  end
  puts "Formula: #{user_numbers[0]} % #{user_numbers[1]}"
  puts "Answer: #{user_numbers[0] % user_numbers[1]}"
end
