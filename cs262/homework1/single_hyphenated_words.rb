#!/usr/bin/env ruby
# Title: Singly-Hyphenated Words
#
# We examined hyphenated words in a quiz in class. In this problem you
# will get a chance to handle them correctly. 
# 
# Assign to the variable regexp a Python regular expression that matches 
# both words (with letters a-z) and also singly-hyphenated words. If you 
# use grouping, you must use (?: and ) as your regular expression
# parentheses. 
#
# Examples: 
#
# regexp exactly matches "astronomy"  
# regexp exactly matches "near-infrared"  
# regexp exactly matches "x-ray"  
# regexp does not exactly match "-tricky" 
# regexp does not exactly match "tricky-" 
# regexp does not exactly match "large - scale" 
# regexp does not exactly match "gamma-ray-burst" 
# regexp does not exactly match "" 

def break_words(sentence)
  sentence.scan /\w+-\w+|\w+/
end
