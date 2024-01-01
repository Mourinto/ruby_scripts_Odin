def substrings(text, dictionary)
  result = {}
  text = text.downcase
  dictionary.map do |word|
    matches = text.scan(word).count
    result[word] = matches if matches != 0
  end
  result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
