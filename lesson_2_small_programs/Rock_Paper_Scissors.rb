VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('You lost!')
  else
    prompt('You tied!')
  end
end

loop do
  choice = ""
  loop do
    prompt("Please make a choice: #{VALID_CHOICES.join(', ')}.")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, Computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt('Would you like to play again? Yes or no?')
  play_again = gets.chomp

  break unless play_again.downcase.start_with?('y')
end

prompt('Thanks for playing!')
