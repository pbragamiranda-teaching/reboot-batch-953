# 1. Welcome th user
puts "**********************"
puts "* Welcome to my Shop *"
puts "**********************"

# 2. Create the stock of the store (hash with product name and price)
store = {
  "kiwi" => 1.0,
  "banana" => 3,
  "beer" => 2.5,
  "milk" => 2
}
# store["banana"] -> 3

# 3. Display items to the user -> - Kiwi $4
store.each do |key, value|
  puts "#{key} - #{value} reais"
end

# 4. Create user cart (array)
cart = []

# force myself inside the loop
user_anwser = "esther is awesome 13"

until user_anwser == "q"
  # while user_anwser != "q"
  # 5. Ask user which item he / she wants to add to the cart
  puts "Which item you want to add to the cart? Or press 'q' to checkout"
  user_anwser = gets.chomp

  if store.key?(user_anwser)
    # 6. Add the item the cart
    cart << user_anwser
  elsif user_anwser == "q"
    puts "See you next time!"
  else
    puts "Sorry, #{user_anwser} is unavailable"
  end
  puts "Your current cart:"
  p cart
  # 7. Create a loop to keep asking for more itens until user says "quit"
end

# 8. When user says "quit" -> calculate the cart total
puts "calculating your bill..."
# 10. Initialize a total_sum variable
total = 0

# cart = ["banana", "kiwi"]
cart.each do |item|
  # cart has all items -> iterate over the cart
  # for each item ["banana", "kiwi"] store[key]
  puts "I'm #{item} and my price is #{store[item]}"
  total += store[item]
end

# 9. Display the user's total
puts "Your total is: #{total}"
