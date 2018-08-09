# calculates answer after taking user input for operation to be 
  
# checks to make sure that symbol is valid
def symbol_entry(symbol)
  if symbol != "add" && symbol != "+" && symbol != "subtract" && symbol != "-" && symbol != "multiply" && symbol != "*" && symbol != "divide" && symbol != "/" && symbol != "^" && symbol != "%" && symbol != "exponent" && symbol != "module"
    puts "Invalid symbol input!"
  end 
end
 
# does the math according to numerical operator  
def symbol_check(symbol, value1, value2) 
print "Answer: " 
  case symbol
  when "add", "+"
    print "#{value1} + #{value2} = " 
    ans = value1 + value2
  when "subtract", "-" 
    print "#{value1} - #{value2} = "  
    ans = value1 - value2
  when "multiply" , "*"
    print "#{value1} * #{value2} = " 
    ans = value1 * value2
  when "divide", "/"  
    if value2 != 0
      print"#{value1} / #{value2} = " 
      ans = value1 / value2
    else
      puts "Infinity"
      ans = 0
    end
  when "^", "exponent"
    print"#{value1} ** #{value2} = " 
    ans = value1 ** value2 
  when "%" , "module"
    print"#{value1} % #{value2} = " 
    ans = value1 % value2 
  else 
    puts "Unable to calculate!"
  end
    
  if ans % 1 > 0.0
    puts ans.round(4)
  else  
    puts ans.to_i 
  end
end 

  
# prints the options for user to select function
puts "Welcome to the calculator program! Which operator would you like to use? "
puts "1. add(+)"
puts "2. subtract(-)"
puts "3. multiply(*)"
puts "4. divide(/)" 
puts "5. exponent(^)"
puts "6. module(%)"
print "Please use one operator name or symbol: "
symbol = gets.chomp

# takes in the first value
print "Please enter first number: "
value1 = gets.chomp.to_f
if value1.to_i == 0 && value1 != "0"
  puts "Invalid number!"
end

# takes in the second value   
print "Please enter second number: "
value2 = gets.chomp.to_f
if value2.to_f == 0.0 && value2 != "0"
  puts "Invalid number!" 
end
  
symbol_entry(symbol)
symbol_check(symbol, value1, value2)
