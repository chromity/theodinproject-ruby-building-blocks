def substrings words, dictionary
  words_array = words.downcase.split(/\s|\.|\?|\!|'|,/).reject(&:empty?)
  hash_list = Hash.new

  words_array.each do |word|
    dictionary.each do |substring|
      if word.include?(substring)
        if hash_list[substring].nil?
          hash_list[substring] = 0
        end

        hash_list[substring] += 1
      end
    end
  end

  puts hash_list.inspect
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)
