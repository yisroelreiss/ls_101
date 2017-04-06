# Write a method that takes one argument, a sentence string, and returns an array of integers. 
# The value of each integer in the array should be equal to the length of the word in the 
# corresponding position in the sentence. For example, if the sentence was 'To be or not to be' 
# the array of integers would be [2, 2, 2, 3, 2, 2].


# Ex 01

def string_lengths(sentence)
  strings = sentence.split # .split returns a sentence with each word a different value in an array

  strings.map { |chars| chars.length } # this will iterate over the returned array from above, returning a a new array that has the length of each word 
  # length returns the chatacter length of a string
end

# Ex 02

def string_lengths(sentence)
  strings = sentence.split # made an array out of string
  lengths = [] # made a blank array called lengths

  strings.each do |string| # this will iterate over the array
    lengths << string.size # for each word in the sentence, we add the length into a new array
  end
  #the strings array is returned, not the lengths array.
end



# Ex 03

def string_lengths(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end

# Ex 04

def string_lengths(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end