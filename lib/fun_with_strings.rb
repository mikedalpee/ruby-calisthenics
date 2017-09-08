module FunWithStrings
  def palindrome?
    s = self.gsub(/\W+/,"")
    s.reverse.downcase == s.downcase
  end
  def count_words
    self.strip.split(/\W+/).inject(Hash.new(0)){|hash,word|hash[word.downcase]+=1;hash}
  end
  def anagram_groups
    words = self.strip.split(/\W+/)
    words.inject([])do |array,word|
      grouped = false
      array.each do |anagrams|
        if anagrams[0].length == word.length && anagrams[0].downcase.chars.sort == word.downcase.chars.sort
           anagrams << word
           grouped = true
           break
        end
      end
      if !grouped
        array << [word]
      end
      array
    end
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
