require 'pry'
class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    possible_anagrams.delete_if do |possible|
      word.split("").sort != possible.split("").sort
    end
    #binding.pry
    possible_anagrams
  end
end

#def match(possible_anagrams)
   # anagrams = []
    #possible_anagrams.each do |possible|
      #if word.split("").sort == possible.split("").sort
       # anagrams << possible
        #binding.pry
      #end
    #end
  #end