#!/usr/bin/env ruby
# Title: Summing Numbers
#
# Write a procedure called sumnums(). Your procedure must accept as input a
# single string. Your procedure must output an integer equal to the sum of
# all integer numbers (one or more digits in sequence) within that string.
# If there are no decimal numbers in the input string, your procedure must
# return the integer 0. The input string will not contain any negative
# integers.
#
# Example Input: "hello 2 all of you 44"
# Example Output: 46
#
# Hint: int("44") == 44
#
def sumnums(sentence)
  sentence.split.inject(0) do |sum, word|
    sum += word.to_i
  end
end

puts sumnums("hello 2 all of you 44")
