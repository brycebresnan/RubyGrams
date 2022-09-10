require 'pry'

class Grams
  attr_accessor(:string_1)
  attr_accessor(:string_2)

  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2
  end

  def self.word?(array)
    vowels_array = ['a','e','i','o','u']
    array.any? { |letter| vowels_array.include?(letter)}
  end

  def anagram?
    array_1 = @string_1.downcase.split(//)
    array_2 = @string_2.downcase.split(//)

    if (!self.class.word?(array_1) || !self.class.word?(array_2))
      return "You need to input actual words!"
    end

    if (array_1.all? { |letter| array_2.include?(letter)})
      return "These words are anagrams."
    elsif (array_1.none? { |letter| array_2.include?(letter)})
      return "These words have no letter matches...but they are antigrams!"
    else
      return "Sorry! These words are not anagrams, nor are they antigrams"
    end
  end

end