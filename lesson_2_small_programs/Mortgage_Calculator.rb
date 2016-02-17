
def prompt(message)
  puts "=> #{message}"
end

prompt("Welcome to the Mortgage Calculator!")
prompt("What is your name?")

name = ""
loop do
  name = gets.chomp
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

loop do # main loop
  prompt("Hi #{name}! How much money do you need?")
  loan_amount = ""
  loop do
    loan_amount = gets.chomp
    if loan_amount.to_i.to_s != loan_amount
      prompt("Please make sure you've entered a valid loan amount.")
    else
      break
    end
  end

  prompt("$#{loan_amount}? Not too shabby. At what APR will you be borrowing?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  apr = ""
  loop do
    apr = gets.chomp
    if apr.empty?()
      prompt("Please use a valid number.")
    else
      break
    end
  end

  prompt("Okay! $#{loan_amount} at #{apr}%. What will the duration of this loan be? Please specify in years.")

  loan_duration_in_years = ""
  loop do
    loan_duration = gets.chomp
    if loan_duration.to_i.to_s != loan_duration
      prompt("Please enter the duration in years.")
    else
      break
    end
  end

  apr = apr.to_f / 100
  monthly_interest = apr / 12
  loan_duration_in_months = loan_duration_in_years.to_i * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_interest /
                      (1 - (1 + monthly_interest)**-loan_duration_in_months.to_i()))

  prompt("Your monthly payment is: $#{monthly_payment}")

  prompt("Would you like to calculate another mortgage rate? Enter 'Y' for yes, 'N' for no. ")
  response = gets.chomp
  break unless response.casecmp('y') == 0
end

prompt("Thanks for using our mortgage calculator!")

prompt("Have a nice day!")
