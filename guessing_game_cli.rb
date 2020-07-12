def generate_random_number
  rand_num = rand(1..6)
  return rand_num
end

def guess_prompt
  puts "Please take a guess at the random number."
end

def guess_attempt
  user_guess= gets.chomp
  return user_guess
end

def correct_guess
  puts "You guessed the correct number!"
end

def wrong_guess(rand_num)
  puts "Sorry! The computer guessed #{rand_num}".
end

def exit_game
  puts "Goodbye!"
end

def run_guessing_gamw
  rand_num = generate_random_number
  guess_prompt
  input = guess_attempt
  if input == rand_num
    correct_guess 
  elsif input != rand_num
    wrong_guess(rand_num)
  elsif input == "exit"
    exit_game
  end
end
