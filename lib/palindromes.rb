
class Palindrome
  def initialize(word)
    @word = word
  end
  def is_palindrome?
    string_remove = @word.gsub(/[^A-Za-z0-9]/, '').downcase
    split_array = string_remove.split(//)
    new_array = []
    i = -1
    while (i >= ((split_array.length - (split_array.length*2))))
      new_array.push(split_array[i])
      i -= 1
    end
    if (split_array == new_array)
      return "This example is a Palindrome!"
    else
      return "This example is not a Palindrome."
    end
  end
end