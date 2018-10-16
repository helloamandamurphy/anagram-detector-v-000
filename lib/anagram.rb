class Anagram
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    possible_anagrams.delete_if do |possible|
      word.split("").sort != possible.split("").sort
    end
    possible_anagrams
  end
end