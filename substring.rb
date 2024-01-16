require 'pry-byebug'

def substring(word, dictionary)
    p downcased_word = word.downcase

   p scanned_word = downcased_word.scan(/\w+/)

    data = dictionary.filter_map { |data| data.downcase if scanned_word.include?data}

    data.reduce(Hash.new(0)) do |result, value|
        result[value] += 1
        result
    end
   
end

dictionary = ["below","down","go","going","horn","how","howdy","go","it","i","low","own","part","partner","sit"]
word = "Howdy partner, sit down! How's it going?"
p substring(word, dictionary)
