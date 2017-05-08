# guessing game
puts "Welcome!"
print "What is your name? "
player_name = gets.chomp
puts "Hello #{player_name}!"

target = rand(99) + 1
num_of_guesses = 0
guessed_it = false

remaining_guesses = 10 - num_of_guesses
puts "#{remaining_guesses} guesses left!"

until guessed_it || num_of_guesses >= 10
  print "Your guess ? "
  guess = gets.to_i
  num_of_guesses = num_of_guesses + 1
  if guess < target
    puts "Your guess is too low"
  elsif guess > target
    puts "Your guess is too high"
  else
    guessed_it = true
    puts "Yay! You guessed it right in #{num_of_guesses} guesses!"
  end
end

unless guessed_it
  "Oops! You lost!"
end
