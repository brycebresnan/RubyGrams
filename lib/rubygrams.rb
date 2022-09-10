require 'pry'

class Grams
  attr_accessor(:string_1)
  attr_accessor(:string_2)

  def initialize(string_1, string_2)
    @string_1 = string_1
    @string_2 = string_2
  end

  def anagram?
    array_1 = @string_1.split(//)
    array_2 = @string_2.split(//)
    array_1.all? { |letter| array_2.include?(letter)} 
  end

end