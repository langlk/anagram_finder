require 'sinatra'
require 'sinatra/reloader'
also_reload('lib/**/*.rb')
require './lib/anagram_dictionary'


get("/") do
  erb(:input)
end

post("/output") do
  erb(:output)
end
