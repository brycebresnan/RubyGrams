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
      return nil
    end

    if (array_1.all? { |letter| array_2.include?(letter)})
      true
    elsif (array_1.none? { |letter| array_2.include?(letter)})
      "These words have no letter matches and are antigrams."
    else
      false
    end
  end

end