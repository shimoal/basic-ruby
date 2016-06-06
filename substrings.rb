dictionary = ["up", "down", "back", "forth", "right", "left", "inside", "outside", "behind", "next", "to", "near", "in", "front", "of", "me", "you", "he", "she", "his", "her", "above", "in", "the", "a", "man", "woman", "who", "what", "where", "when"]

def substrings(str, arr)
	substrings_count = Hash.new #creating the final hash
	words = str.downcase.split(" ") #currently, changing everything to be in lower case
	punctuation = [",", ".", "?", "!"] #removing punctuation
	words = words - punctuation
	
	count = 0
	words.each do |word| 
			if arr.include? word then #only if the word is present, else skip
				words.each do |word2| # if the word is in the dictionary, begin a second cycle to count
					if word2 == word
				 		count+=1
				 	end
				 end
			substrings_count[word]  = count #adding the word and its count to the hash
			end
		count = 0 #resetting the count to 0 before checking the next word
	end
puts substrings_count
end

#tests
substrings("Follow me follow me down, down, down", dictionary)
substrings("In the town, where I was born lived a man who sailed the sea. And he told me of his life in a yellow submarine.", dictionary)
substrings("You you you you are right right, and I I I am left", dictionary)
