# Anagram Finder

#### _Project in Ruby_

#### By Kelsey Langlois and Megan Olson

## Description

_A Ruby web app that finds all anagrams of a word in the given dictionary._

## Setup/Installation Requirements

* Clone this repository
* Run ```bundle install``` in the project root.
* Run ```ruby app.rb```
* Open ```localhost:4567``` in your web browser

## Specifications

* Program builds a dictionary that maps a sorted set of characters to the word that has those characters.
  * Example Input: "tea, cat"
  * Example Output: {"aet" => ["tea"], "act" => ["cat"]}
* Program builds a dictionary that maps a sorted set of characters to all words in the input file with those characters.
  * Example Input: "tea, eat, cat, act"
  * Example Output: {"aet" => ["tea", "eat"], "act" => ["cat", "act"]}
* Program returns nothing if the input (sorted alphabetically) is not in the anagrams dictionary.
  * Example Input: "dog"
  * Example Output: []
* Program returns all anagrams listed under the input (sorted alphabetically) in the anagrams dictionary.
  * Example Input: "tac"
  * Example Output: ["cat", "act"]

## Support and contact details

_Please contact [kels.langlois@gmail.com](mailto:kels.langlois@gmail.com) with questions, comments, or issues._

## Technologies Used

* Ruby
* Sinatra

### License

Copyright (c) 2017 **Kelsey Langlois and Megan Olson**

*This software is licensed under the MIT license.*
