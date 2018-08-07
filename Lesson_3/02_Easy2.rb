def prompt(message)
  Kernel.puts("***#{message}***")
end

## ========================================================================##
puts "Exercises: Easy 2"

##=========================================================================##
puts "-" * 50
puts ""

puts <<-MSG
Question 1
In this hash of people and their age,

01 | ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

see if "Spot" is present.

Bonus: What are two other hash methods that would work just as well for this solution?
MSG

puts <<-MSG
Solution 1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.has_key?("Spot")

or 

ages.key?("Spot")

Bonus Answer:

Hash#include? and Hash#member?
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 2

Starting with this string:

munsters_description = "The Munsters are creepy in a good way."
Convert the string in the following ways (code will be executed on original munsters_description above):

"The munsters are creepy in a good way."
"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
"the munsters are creepy in a good way."
"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
MSG

puts ""
puts <<-MSG
Solution 2

munsters_description.capitalize!
munsters_description.swapcase!
munsters_description.downcase!
munsters_description.upcase!
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 3

# We have most of the Munster family in our age hash:

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash

# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
MSG

puts ""
puts <<-MSG
Solution 3

ages.merge!(additional_ages)
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 4

See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."
MSG

puts ""
puts <<-MSG
Solution 4a

advice.match("Dino")

Solution 4b
advice.downcase
advice.include?("Dino")
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 5

Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
MSG

puts ""
puts <<-MSG
Solution 5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 6

How can we add the family pet "Dino" to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
MSG

puts ""

puts <<-MSG
Solution 6
flintstones << "Dino"
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 7

In the previous exercise we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones << "Dino"

We could have used either Array#concat or Array#push to add Dino to the family.

How can we add multiple items to our array? (Dino and Hoppy)
MSG

puts ""
puts <<-MSG
Solution 7

flintstones.push("Dino").push("Hoppy")  # push returns the array so we can chain

or

flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 8

Shorten this sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

...remove everything starting from "house".

Review the String#slice! documentation, and use that method to make the return 
value "Few things in life are as important as ". 

But leave the advice variable as "house training your pet dinosaur.".

As a bonus, what happens if you use the String#slice method instead?
MSG

puts ""
puts <<-MSG
Solution 8

advice.slice!(0, advice.index('house'))
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 9

Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"
MSG

puts""
puts <<-MSG
Solution 9

statement.count('t')
MSG

##=========================================================================##
puts "-" * 50
puts ""
puts <<-MSG
Question 10

Back in the stone age (before CSS) we used spaces to align things on the screen. 
If we had a 40 character wide table of Flintstone family members, how could we 
easily center that title above the table with spaces?

title = "Flintstone Family Members"
MSG

puts <<-MSG
Solution 10
title.center(40)
MSG