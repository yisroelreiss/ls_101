### INSTRUCTIONS ###
# Build a command line calculator program that does the following:

# > asks for two numbers
# > asks for the type of operation to perform: add, subtract, multiply or divide
# > displays the result

# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts() method to display output. 
# Remember that Kernel.gets() includes the newline, so you have to call chomp() to remove it: Kernel.gets().chomp().


# Here it the pseudo code

# STEP 1 ask the user for two numbers
# STEP 2 ask the user for an operation to perform
# STEP 3 perform the operation on the two numbers
# STEP 4 output the result

# answer = Kernel.gets()
# Kernel.puts answer(answer)

### IMPROVEMENTS IN THIS REFACTORED VERSION ###
# Prompt symbol added before text.
# Use case statements instead of if else
# We should add something that checks whether inputs are valid.  
# We added a loop to allow a person to everything again
# Get user's name
# Added styling to operator prompt
# Tell user what we doing

  def prompt(message) # ==> This is to add a prompt before text when we ask user for information
    Kernel.puts("=> #{message}")
  end
  
  def valid_number?(num)
    num.to_i() !=0 #to_i will equal zero if not an integer is put in
  end
  
  def operation_to_message(op)
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
  
  prompt("Welcome to Calculator! Enter your name:")
  
  name = ''
  loop do
   name = Kernel.gets().chomp()
   
   if name.empty?()
     prompt("Make sure to use a valid name.")
    else
      break
   end
  end

loop do# main loop  
  prompt("Hi #{name}!")
  
  # STEP 1 asks the user for two numbers
  
  number1 = '' # we do this to initialize number1 outside of the loop below.  
  # Anything in a block of code, like a loop, only is available in the loop itself
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
  
    if valid_number?(number1)
      break
    else
      prompt("Hmmm....that doesn't look like a valid number")
    end
  end
  
  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
    
    if valid_number?(number2)
        break
      else
        prompt("Hmmm....that doesn't look like a valid number")
    end
  end
  
  
  # Kernel.puts(number1.inspect) # => This will output "3/n" .It can be very helpful to use inspect to see exactly what the object is.
  # You can see in the above output is that the new /n character is being used.
  # So this is how you check that /n character gets removed -> Kernel.puts(number1.chomp().inspect())
  
  prompt("the 1st number is:" + number1 + "!") # He does this to check that output is correct.
  prompt("the 2nd number is:" + number2 + "!") # He does this to check that output is correct.
  
  # STEP 2 ask the user for an operation to perform
  
  operator_prompt = <<-MSG # We can do this to add a little bit of formatting and multi line string.
   What operation would you like to perform?
   1) add 
   2) subtract 
   3) multiply 
   4) divide
  MSG
  
prompt(operator_prompt)
  
  # prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
  
  
  # STEP 3 perform the operation on the two numbers
  
  # if operator == "1"
  #   result = number1.to_i() + number2.to_i() #Because an if condition is not a bloc, result can be intialized here
  # elsif operator == '2'
  #   result = number1.to_i() - number2.to_i()
  # elsif operator == '3'
  #   result = number1.to_i() * number2.to_i()
  # else
  #   result = number1.to_f()/number2.to_f()
  # end
  
  operator=''
  loop do
    operator = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(operator)   
      break
    else
      prompt("Must choose 1,2,3 or 4")
    end
  end
  
  prompt("#{operation_to_message(operator)} the two numbers...")
  
  result = case operator # we do this to make it easier to scan
          when '1'
            result = number1.to_i() + number2.to_i()
          when '2'
            result = number1.to_i() - number2.to_i()
          when '3'
            result = number1.to_i() * number2.to_i()
          when '4'
            result = number1.to_f()/number2.to_f()
  end
  
 prompt("The result is #{result}")
  
 prompt("Do you want to perform another calculation? (Y to calculate again)")
 answer = Kernel.gets().chomp()
 break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the calculator. Good bye!")

