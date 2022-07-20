  # Wecolme the user to the gift list
  puts "*" * 31
  puts "*" + " " * 29 + "*"
  puts "*  Welcome to Christmas List  *"
  puts "*" + " " * 29 + "*"
  puts "*" * 31

  # Create a place to store the gifts (array)
  gift_list = [{name: "beer", bought: false}, {name: "book", bought: true}]

  user_input = ""
  # Create a loop to keep asking the user what he or she wants to do
  while user_input != "quit"
    # Display options to the user and ask which one: [list|add|delete|quit]
    print ">"
    puts "Which option? [list|add|mark|delete|quit]"
    # Get users input
    user_input = gets.chomp
    # based on the choice -> print TODO: whatever the user chose
    case user_input
    when "list"
      # display al the gifts in the list: 1. GiftName (each_with_index)
      gift_list.each_with_index do |gift, index|
        marked = gift[:bought] ? "X" : " "
        puts "#{index + 1}. [#{marked}] #{gift[:name]}"
      end
    when "add"
      # ask user which gift he or she wants to add
      puts "Which gift would you like to add?"
      # gets user anwser
      user_anwser = gets.chomp
      # push inside the gift list
      gift_list << {name: user_anwser, bought: false}
    when "delete"
      # list the items available
      gift_list.each_with_index do |gift, index|
        marked = gift[:bought] ? "X" : " "
        puts "#{index + 1}. [#{marked}] #{gift[:name]}"
      end
      # ask the user which one he or she wants to delete (index)
      puts "Which item would you like to delete (give me an index)?"
      # gets user anwser
      user_anwser = gets.chomp.to_i
      # remove the item from the gift list
      gift_list.delete_at(user_anwser - 1)
    when "mark"
      gift_list.each_with_index do |gift, index|
        marked = gift[:bought] ? "X" : " "
        puts "#{index + 1}. [#{marked}] #{gift[:name]}"
      end

      puts "Which one would you like to mark as bought (give me an index)?"
      user_anwser = gets.chomp.to_i - 1
      # p "Im the index: #{user_anwser}"
      # p "I'm the element on the gift list array #{gift_list[user_anwser]}"

      gift_list[user_anwser][:bought] = true

    when "quit"
      puts "See you later."
    else
      puts "Invalid option."
    end
  end

  # Add the Mark option to the menu
  # Update gift_list to a hash
  # Update all the actions from array of strings to array of hash

  # gift_list = [ {name: "beer", bought: false}, {name: "wine", bought: true}  ]

  # list
  # update each for array of hash

  # add
  # ask which name gift / gets info from user
  # create a hash with keys name, bought and price and values coming from the user

  # delete
  # ask which one to delete / gets input from user
  # delete from array based on index
