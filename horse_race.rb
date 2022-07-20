# interface.rb

# Pseudo-code:
# 1. Print welcome and the horses names (array - each_with_index)
horses = ["Maradona", "Cher", "Darwin", "Tarantino", "Mandela"]
#             0          1       2         3             4
puts "Welcome to the horse race!"
puts "--------------------------"
wallet = 30

# start while / until loop

while wallet >= 10

  puts "Here are the running horses:"

  horses.each_with_index do |horse, index|
    # 1. Maradona
    # 2. Cher
    puts "#{index + 1}. #{horse}"
  end

  # 2. Get user's bet (gets.chomp)
  puts ""
  puts ""
  puts ""
  puts "Which horse do you want to bet? (give me an index)"
  # puts "Which horse do you want to bet?"
  user_bet = gets.chomp.to_i
  # user_bet = gets.chomp.capitalize
  # put the bet on the pot
  wallet -= 10

  # 3. Run the race 🐴 (.sample)
  winner_horse = horses.sample # -> random horse name
  puts "Race is on!"
  puts "..........."

  # 4. Print which horse won
  # puts winner_horse
  # user_horse = horses[user_bet]

  # 5. Compare the winner horse with the user bet horse
  if horses[user_bet - 1] == winner_horse
    puts "The winner horse is: #{winner_horse}"
    puts "User won!"
    wallet += 20
    puts "Your current balance is: #{wallet}"
  else
    puts "The winner horse is: #{winner_horse}"
    puts "You Lost!"
    wallet -= 10
    puts "Your current balance is: #{wallet}"
  end
end

puts "You are out of money. Go to work!"

# 6. Print out the winner based on the result

# 7. Define wallet starting 30
# 8. Start a while loop where the condition is wallet has at least 10 bucks
# 9. Depending on the result, update balance
