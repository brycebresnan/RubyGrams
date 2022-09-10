#!/usr/bin/env ruby
require ("./lib/rubygrams.rb")

puts "Initializing the ANAGRAM TEST..."
puts "Please input Example 1: "
ex_1 = gets.chomp
puts "Please input Example 2:"
ex_2 = gets.chomp
g = Grams.new(ex_1, ex_2)
puts g.anagram?