#!/usr/bin/env ruby
require ("./lib/rubygrams.rb")
require ("./lib/palindromes.rb")
require 'tty-prompt'


prompt = TTY::Prompt.new
checker = true
while checker == true
  greeting = 'Welcome to Fun With Words! Please select a program to run:'
  choices = %w(Anagrams Palindromes)
  answer = prompt.select(greeting, choices)
  if (answer == choices[0])
    puts "Initializing the ANAGRAM TEST..."
    puts "Please input Example 1: "
    ex_1 = gets.chomp
    puts "Please input Example 2:"
    ex_2 = gets.chomp
    g = Grams.new(ex_1, ex_2)
    puts g.anagram?
  elsif (answer == choices[1])
    puts "Initializing the PALINDROME TEST..."
    puts "Please input example to check: "
    ex = gets.chomp
    p = Palindrome.new(ex)
    puts p.is_palindrome?
  end
  checker = prompt.yes?('Would you like to select another application?')
end
puts "Exiting program..."


