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
# Kenrel.puts answer(answer)

Kernel.puts("Welcome to Calculator!")

# STEP 1 asks the user for two numbers

Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

# Kernel.puts(number1.inspect) # => This will output "3/n" .It can be very helpful to use inspect to see exactly what the object is.
# You can see in the above output is that the new /n character is being used.
# So this is how you check that /n character gets removed -> Kernel.puts(number1.chomp().inspect())

Kernel.puts("the 1st number is:" + number1 + "!") # He does this to check that output is correct.
Kernel.puts("the 2nd number is:" + number2 + "!") # He does this to check that output is correct.

# STEP 2 ask the user for an operation to perform

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

# STEP 3 perform the operation on the two numbers

if operator == "1"
  result = number1.to_i() + number2.to_i() #Because an if condition is not a bloc, result can be intialized here
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f()/number2.to_f()
end

Kernel.puts("The result is #{result}")