require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
  card
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  card_total
end

def hit?(card_total)
   prompt_user
   user_input = get_user_input
   if user_input == "h"
     card_total += deal_card
   elsif user_input == "s"
     card_total
   elsif user_input != "h" && user_input != "s"
     invalid_command
     prompt_user
   end
   card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
  welcome
  card_total = initial_round

  new_card_total = 0
  
  loop do
    new_card_total = hit?(card_total) 
    if new_card_total > 21
      break
    end
  end
  
  end_game(new_card_total)
end
    
