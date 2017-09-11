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
end
