require 'rspec'
require ("./lib/rubygrams.rb")

describe('#anagram?') do
  it("should return true if two words are found to be anagrams when compared") do
  test_words = Grams.new("race","care")
  expect(test_words.anagram?).to(eq(true))
  end

end