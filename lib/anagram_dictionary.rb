#!/usr/bin/env ruby

class AnagramDictionary
  attr_reader(:anagrams)

  def initialize(words)
    @anagrams = {}
    if words.class == Array
      words.each do |word|
        sorted_word = word.chars.sort.join("")
        if @anagrams.has_key?(sorted_word)
          @anagrams.fetch(sorted_word).push(word)
        else
          @anagrams.store(sorted_word, [word])
        end
      end
    elsif words.class == String
      word_file = File.new(words, "r")
      word_file.each_line do |word|
        word = word.chomp
        sorted_word = word.chars.sort.join("")
        if @anagrams.has_key?(sorted_word)
          @anagrams.fetch(sorted_word).push(word)
        else
          @anagrams.store(sorted_word, [word])
        end
      end
    end
  end

  def get_anagrams(word)
    sorted_word = word.chars.sort.join("")
    if @anagrams.has_key?(sorted_word)
      return @anagrams.fetch(sorted_word)
    else
      return []
    end
  end
end
