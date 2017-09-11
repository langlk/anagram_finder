require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/anagram_dictionary'
require 'pry'

dictionary = AnagramDictionary.new("lib/words.txt")

get("/") do
  erb(:input)
end

post("/output") do
  @word = params["word"]
  @anagrams = dictionary.get_anagrams(@word)
  erb(:output)
end
