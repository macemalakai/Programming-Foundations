# if the number is == 0
# set up possible answers, including a divisble by 0 resulting in "undefined"


def prompt(message)
  puts("=> #{message}")
end

def integer?(input)
  input.to_i.to_s == input
end

def operation_to_method(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt"Welcome to our Calculator! Enter your name:"

name = ""
loop do
  name = gets.chomp
  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")
loop do # main loop
  num1 = ''
  loop do
    prompt"What is the first number?"
    num1 = gets.chomp

    if integer?(num1)
      break
    else
      prompt("Hmm... That doesn't look like a valid number.")
    end
  end

  num2 = ''
  loop do
    prompt"What is the second number?"
    num2 = gets.chomp

    if integer?(num2)
      break
    else
      prompt("Hmm... That doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) Add
  2) Subtract
  3) Multiply
  4) Divide
  MSG
  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3, or 4")
    end
  end

  prompt("#{operation_to_method(operator)} the two numbers...")

  result = case operator
           when '1'
             num1.to_i + num2.to_i
           when '2'
             num1.to_i - num2.to_i
           when '3'
             num1.to_i * num2.to_i
           when '4'
             num1.to_f / num2.to_f
             if num2.to_f == 0
               prompt("Sorry, you cannot divide by 0.")
             end
           end

  if result == nil
    result = "Undefined"
  end

  prompt "The answer is #{result}."

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  response = gets.chomp
  break unless response.downcase.start_with?('y')
end

prompt("Thanks for using the calculator! : )")
