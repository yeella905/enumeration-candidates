# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

pp @candidates

puts "Is candidate 5 experienced?"
puts experienced?(find(5))  # Should print true

puts "Is candidate 7 experienced?"
puts experienced?(find(7))  # Should print false