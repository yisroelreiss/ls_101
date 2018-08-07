def prompt(message)
  Kernel.puts("***#{message}***")
end

## ========================================================================= ##
puts "Exercises: Easy 1"

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 1")

puts <<-MSG
What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers
MSG

puts ""
prompt("Solution 1")

puts <<-MSG
It prints out

1
2
2
3

numbers.uniq returned a new Array with unique elements, but does not modify the 
numbers object. 

Had the last line been p numbers instead, the output would have been 
[1, 2, 2, 3] because the p method automatically calls inspect on its argument, 
which gives a different formatting on the output. 

Furthermore, we could have also done puts numbers.inspect and the output would 
have been the same as using the p method.
MSG

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 2")

puts <<-MSG
Describe the difference between ! and ? in Ruby. 

And explain what would happen in the following scenarios:

what is != and where should you use it?
put ! before something, like !user_name
put ! after something, like words.uniq!
put ? before something
put ? after something
put !! before something, like !!user_name
MSG

puts ""
prompt("Solution 2")
puts <<-MSG
Just to clarify, if you see ! or ? at the end of the method, it's actually part 
of the method name, and not Ruby syntax. Therefore, you really don't know what 
the method is doing, even if it ends in those characters -- it depends on the
method implementation. The other uses are actual Ruby syntax:

!= means "not equals"
? : is the ternary operator for if...else
!!<some object> is used to turn any object into their boolean equivalent.
!<some object> is used to turn any object into the opposite of their boolean 
equivalent, just like the above, but opposite.
MSG

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 3")

puts <<-MSG 
Replace the word "important" with "urgent" in this string:

advice = "Few things in life are as important as house training your 
pet dinosaur."
MSG

puts
prompt("Solution 3")
puts "advice.gsub!('important', 'urgent')"

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 4")

puts <<-MSG
The Ruby Array class has several methods for removing items from the array. 

Two of them have very similar names. Let's see how they differ:

# numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

# numbers.delete_at(1)
# numbers.delete(1)
MSG

puts""
prompt("Solution 4")

puts <<-MSG
numbers = [1, 2, 3, 4, 5]

numbers.delete_at(1) => # numbers is now [1, 3, 4, 5]

the array is operated on directly to remove the number at the 1st index and 
the return value of the call is the removed item 2

numbers.delete(1) # numbers is now [2, 3, 4, 5] 

the array is operated on directly to remove the number 1 and 
the return value of the call is the removed item 1
MSG

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 5")

puts <<-MSG
Programmatically determine if 42 lies between 10 and 100.

hint: Use Ruby's range object in your solution.
MSG

puts ""
prompt("Solution 5")

puts "(10..100).cover?(42)"

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 6")

puts <<-MSG
Starting with the string:

famous_words = "seven years ago..."

show two different ways to put the expected "Four score and " in front of it.
MSG

puts ""
prompt("Solution 6")

puts <<-MSG
1. "Four score and " + famous_words
2. famous_words.prepend("Four score and ")
3. "Four score and " << famous_words
MSG

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 7")

puts <<-MSG
Fun with gsub:

1 | def add_eight(number)
2 |  number + 8
3 | end
4 |
5 | number = 2
6 |
7 |how_deep = "number"
8 | 5.times { how_deep.gsub!("number", "add_eight(number)") }
9 |
10|p how_deep


This gives us a string that looks like a "recursive" method call:

1 | "add_eight(add_eight(add_eight(add_eight(add_eight(number)))))"


If we take advantage of Ruby's Kernel#eval method to have it execute this 
string as if it were a "recursive" method call

1| eval(how_deep)


what will be the result?
MSG

puts ""
prompt("Solution 7")
puts "42"

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 8")

puts <<-MSG
If we build an array like this:

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]

We will end up with this "nested" array:

["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]

Make this into an un-nested array.
MSG

puts""
prompt("Solution 8")
puts "flintstones.flatten!"

## ========================================================================= ##
puts "-" * 50
puts ""
prompt("Question 9")

puts <<-MSG
Given the hash below

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, 
"BamBam" => 4, "Pebbles" => 5 }

Turn this into an array containing only two elements: Barney's name and Barney's number
MSG

puts ""
prompt("Solution 9")
puts 'flintstones.assoc("Barney") #=> ["Barney", 2]'