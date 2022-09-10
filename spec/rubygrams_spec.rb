require 'rspec'
require ("./lib/rubygrams.rb")

describe('#anagram?') do
  it("should return true if two words are found to be anagrams when compared") do
  test_words = Grams.new("race","care")
  expect(test_words.anagram?).to(eq(true))
  end

  it("should return false if two words are found not to be anagrams when compared") do
    test_words = Grams.new("bace","acae")
    expect(test_words.anagram?).to(eq(false))
    end

  it("should still match anagrams despite casing differences") do
    test_words = Grams.new("Race","cAre")
    expect(test_words.anagram?).to(eq(true))
    end

  it("should check if inputted strings are actual words. (Rule 1: contains a vowel") do
    test_words = Grams.new("dsqp","pdqs")
    expect(test_words.anagram?).to(eq(nil))
    end

end