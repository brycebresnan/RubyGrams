require 'rspec'
require ("./lib/rubygrams.rb")

describe('#anagram?') do
  it("should return true if two words are found to be anagrams when compared") do
  test_words = Grams.new("race","care")
  expect(test_words.anagram?).to(eq("These examples are anagrams."))
  end

  it("should return false if two words are found not to be anagrams when compared, but returns any matching letters") do
    test_words = Grams.new("bot","top")
    expect(test_words.anagram?).to(eq("Sorry! These examples are not anagrams, but 2 letters match: o, t"))
    end

  it("should still match anagrams despite casing differences") do
    test_words = Grams.new("Race","cAre")
    expect(test_words.anagram?).to(eq("These examples are anagrams."))
    end

  it("should check if inputted strings are actual words. (Rule 1: contains a vowel") do
    test_words = Grams.new("dsqp","pdqs")
    expect(test_words.anagram?).to(eq("You need to input actual words!"))
    end

  it("if strings are not antigrams (false), check to see if no letters are in common.") do
    test_words = Grams.new("dog","cat")
    expect(test_words.anagram?).to(eq("These examples have no letter matches...but they are antigrams!"))
    end

  it("should account for sentences that are anagrams.") do
    test_words = Grams.new("The Morse Code.","Here come dots!")
    expect(test_words.anagram?).to(eq("These examples are anagrams."))
    end
    
  it("should make sure the lengths of the examples are the same. If not, return an error") do
    test_words = Grams.new("looks","kool")
    expect(test_words.anagram?).to(eq("These examples are not the same number of characters, thus they can not be anagrams."))
    end

  it("should make sure the two words are not the same.") do
    test_words = Grams.new("looks","looks")
    expect(test_words.anagram?).to(eq("These are the same word."))
    end
end