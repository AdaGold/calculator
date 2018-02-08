#Calculator Exercise
#command line interface that allows a user to perform simple arithmetic

puts "This calculator will perform simple arithmetic on two numbers, using either addition, subtraction, multiplication, or division."
puts

print "What is the first number? "
num_one = gets.chomp.to_f

print "What is the second number? "
num_two = gets.chomp.to_f

print "Which operation would you like performed? "
command = gets.chomp.upcase.to_s

until ["ADD", "+", "SUBTRACT", "-", "MULTIPLY", "*", "DIVIDE", "/"].include?(command)
  puts "You did not enter an available operation. Please try again."
  command = gets.chomp.upcase.to_s
end

puts command

case command
  when "ADD", "+"
    puts "We're adding numbers"
    puts num_one + num_two
  when "SUBTRACT", "-"
    puts "We're subtracting numbers"
      puts num_one - num_two
  when "MULTIPLY", "*"
    puts "We're multiplying numbers"
    puts num_one * num_two
  when "DIVIDE", "/"
    puts "We're dividing numbers"
    puts num_one / num_two
  else
    puts "You did not enter an available operation. Please try again."
end


#Bike rack for future enhancements
#av_commands = ["ADD", "+", "SUBTRACT", "-", "MULTIPLY", "*", "DIVIDE", "/"]
