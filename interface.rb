require_relative "calculator"
# interface.rb

# Create a structure that keeps asking "do you want to perform another calculation [q to exit]"
# condition == user anwser
# while / until condition
#   code_to_be_looped_over
puts "Hello my dear friend"
# intialize a variable that forces yourself inside the loop
user_input = "rubens is the best 16!"

# until user_input == "q"
#     condition
while user_input != "q"
  # 1. Say hello to the user
  # 2. Ask user for the first number  /  3. Get user answer
  puts "what is your first number?"
  first_num = gets.chomp.to_f
  # 4. Ask user for second number /  5. Get user answer
  puts "whats is the second number"
  second_num = gets.chomp.to_f
  # 6. Ask user for the operator / 7. Get user operator
  puts "what is the operation you want to perform"
  operator = gets.chomp
  # 7. Call the calculator method and display the result
  puts calculator(first_num, second_num, operator)
  puts "Calculate again?[yes to calculate | q to exit]"
  # update the value the variable that is being evaluated on your condition
  user_input = gets.chomp
end
