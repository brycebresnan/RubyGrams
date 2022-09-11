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
    array_1 = @string_1.gsub(/[^A-Za-z]/, '').downcase.split(//)
    array_2 = @string_2.gsub(/[^A-Za-z]/, '').downcase.split(//)
    
    if (array_1.length != array_2.length)
      return "These examples are not the same number of characters, thus they can not be anagrams."
    end

    if (!self.class.word?(array_1) || !self.class.word?(array_2))
      return "You need to input actual words!"
    end

    if (array_1.all? { |letter| array_2.include?(letter)})
      return "These examples are anagrams."
    elsif (array_1.none? { |letter| array_2.include?(letter)})
      return "These examples have no letter matches...but they are antigrams!"
    else
      rej_arr = array_1.find_all { |letter| array_2.include?(letter)}.uniq
      rtn_str = rej_arr.join(", ")
      return "Sorry! These examples are not anagrams, but #{rej_arr.length} letters match: #{rtn_str}"
    end
  end
  
end