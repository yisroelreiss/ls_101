def prompt(message)
  Kernel.puts("***#{message}***")
end

def vertical_line
  puts "-" * 50
  puts ""
end

def space
  puts ""
end

## ========================================================================##
puts "Exercises: Medium 1"

## ========================================================================##
vertical_line
prompt("Question 1")
space
# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in 
# the days before computers had video screens).

# For this exercise, write a one-line program that creates the following output 
# 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
# The Flintstones Rock!
#   The Flintstones Rock!

# Solution 1
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

## ========================================================================##
vertical_line
prompt("Question 2")
space
# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?

# Solution 2
# This will raise an error TypeError: no implicit conversion of Fixnum into 
# String because (40+2) results in an integer and it is being concatenated to 
# a string.

# To fix this either call
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 +2}"
# (40+2).to_s
# or use string interpolation:

# puts "the value of 40 + 2 is #{40 + 2}"

## ========================================================================##
vertical_line
prompt("Question 3")
space
# Alan wrote the following method, which was intended to show all of the 
# factors of the input number:

# def factors(number)
#   dividend = number
#   divisors = []
#   begin
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end until dividend == 0
#   divisors
# end

# Alyssa noticed that this will fail if the input is 0, or a negative number, 
# and asked Alan to change the loop. How can you change the loop construct 
# (instead of using begin/end/until) to make this work? Note that we're not 
# looking to find the factors for 0 or negative numbers, but we just want to 
# handle it gracefully instead of raising an exception or going into an infinite
# loop.

# Bonus 1

# What is the purpose of the number % dividend == 0 ?

# Bonus 2

# What is the purpose of the second-to-last line in the method (the divisors 
# before the method's end)?

# Solution 3
# Use a while condition for the loop:

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  puts divisors
end

factors(100)

# while dividend > 0 do
#   divisors << number / dividend if number % dividend == 0
#   dividend -= 1
# end
# Bonus Answer 1

# Allows you to determine if the result of the division is an integer number 
# (no remainder).

# Bonus Answer 2

# This is what is the actual return value from the method. 
# Recall that without an explicit return statement in the code, the return 
# value of the method is the last statement executed. If we omitted this line, 
# the code would execute, but the return value of the method would be nil.

## ========================================================================##
vertical_line
prompt("Question 4")
space
# Alyssa was asked to write an implementation of a rolling buffer. 

# Elements are added to the rolling buffer and if the buffer becomes full, 
# then new elements that are added will displace the oldest elements in the 
#buffer.

# She wrote two implementations saying, "Take your pick. Do you like 
# << or + for modifying the buffer?". 

#Is there a difference between the two, other than what operator she chose to 
# use to add an element to the buffer?

# def rolling_buffer1(buffer, max_buffer_size, new_element)
#   buffer << new_element
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# def rolling_buffer2(input_array, max_buffer_size, new_element)
#   buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end

# Solution 4

# Yes, there is a difference. While both methods have the same return value, 
# in the first implementation, the input argument called buffer will be modified 
# and will end up being changed after rolling_buffer1 returns. That is, the 
# caller will have the input array that they pass in be different once the call 
#returns. In the other implementation, rolling_buffer2 will not alter the 
# caller's input argument.

## ========================================================================##
vertical_line
prompt("Question 5")

# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator,
# A user passes in two numbers, and the calculator will keep computing the 
# sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, 
# he got an error. Something about the limit variable. What's wrong with the 
# code?

# limit = 15

# def fib(first_num, second_num)
#   while second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1)
# puts "result is #{result}"

# How would you fix this so that it works?

# Solution 5

# Ben defines limit before he calls fib. But limit is not visible in the scope 
# of fib because fib is a method and does not have access to any local variables
# outside of its scope.

# You can make limit an additional argument to the definition of the fib method 
# and pass it in when you call fib.

## ========================================================================##
vertical_line
prompt("Question 6")
space

# In an earlier exercise we saw that depending on variables to be modified by 
# called methods can be tricky:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# We learned that whether the above "coincidentally" does what we think we 
# wanted "depends" upon what is going on inside the method.

# How can we refactor this exercise to make the result easier to predict and 
# easier for the next programmer to maintain?

# Solution 6

def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Every language (Ruby included) provides ways and means of writing "clever" 
# code that depends on some of the less obvious traits of the language.

# Every good programmer practices these tricks...and then avoids them like the 
# plague.

# Clever programmers don't write "clever" code. They write explicit code that is
# easy to read, debug and modify as the requirements change.

## ========================================================================##
vertical_line
prompt("Question 7")
space
# What is the output of the following code?

# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# new_answer = mess_with_it(answer)

# p answer - 8

# Solution 7
# 34

## ========================================================================##
vertical_line
prompt("Question 8")
space
# One day Spot was playing with the Munster family's home computer and he wrote 
# a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

puts munsters

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

puts munsters

# After writing this method, he typed the following...
# and before Grandpa could stop him, he hit the Enter key with his tail:

# mess_with_demographics(munsters)

# Did the family's data get ransacked? Why or why not?

# Solution 8

# Spot will find himself in the "dog" house for this one. 

# The family's data is all in shambles now.

# Why? Remember that in Ruby, what gets passed in the parameter list is not 
# what it appears. Under the hood, ruby passes the object id of each item 
# rather than the value of the parameter. The method internally stores these 
# object id's in locally scoped (private to the method) variables (named per 
# the method definition's parameter list).

# So Spot's demo_hash starts off pointing to the munsters hash. His program 
# could wind up replacing that with some other object id and then the family's 
# data would be safe.

# In this case, the program does not reassign demo_hash -- it just uses it as-is. 
# So the actual hash object that is being messed with inside of the method IS 
# the munsters hash.

## ========================================================================##
vertical_line
prompt("Question 9")
space
# Method calls can take expressions as arguments. Suppose we define a function 
# called rps as follows, which follows the classic rules of rock-paper-scissors 
# game, but with a slight twist that it declares whatever hand was used in the 
# tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# Solution 9

# "paper"

# The outermost call is evaluated by determining the result of 
# rps(rps("rock", "paper"), rps("rock", "scissors")) versus rock. 

# In turn that means we need to evaluate the two separate results of 
# rps("rock", "paper") and rps("rock", "scissors") and later combine them by 
# calling rps on their individual results. 

#Those innermost expressions will return "paper" and "rock", respectively. 
# Calling rps on that input will return # "paper". Which finally when evaluated 
# against "rock" will return "paper".

## ========================================================================##
vertical_line
prompt("Question 10")
space
# Consider these two simple methods:

# def foo(param = "no")
#   "yes"
# end

# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end

# What would be the output of this code:

# bar(foo)

# Solution 10

# "no"

# This is because the value returned from the foo method will always be "yes" , 
# and "yes" == "no" will be false.