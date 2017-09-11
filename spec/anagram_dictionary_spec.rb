#!/usr/bin/env ruby

require 'rspec'
require 'anagram_dictionary'

describe('AnagramDictionary') do
  it "builds a dictionary that maps a sorted set of characters to the word that has those characters" do
    anagram_dictionary = AnagramDictionary.new(["tea", "cat"])
    expect(anagram_dictionary.anagrams).to(eq({"aet" => ["tea"], "act" => ["cat"]}))
  end
  it "builds a dictionary that maps a sorted set of characters to all words in the input file with those characters" do
    anagram_dictionary = AnagramDictionary.new(["tea", "eat", "cat", "act"])
    expect(anagram_dictionary.anagrams).to(eq({"aet" => ["tea", "eat"], "act" => ["cat", "act"]}))
  end
  it "returns nothing if the input (sorted alphabetically) is not in the anagrams dictionary" do
    anagram_dictionary = AnagramDictionary.new(["tea", "eat", "cat", "act"])
    expect(anagram_dictionary.get_anagrams("dog")).to(eq([]))
  end
  it "returns all anagrams listed under the input (sorted alphabetically) in the anagrams dictionary" do
    anagram_dictionary = AnagramDictionary.new(["tea", "eat", "cat", "act"])
    expect(anagram_dictionary.get_anagrams("tac")).to(eq(["cat", "act"]))
  end
  it "reads input from file builds dictionary from them" do
    anagram_dictionary = AnagramDictionary.new("spec/words_test.txt")
    expect(anagram_dictionary.anagrams).to(eq({"aet" => ["tea", "eat"], "act" => ["cat", "act"]}))
  end
end
