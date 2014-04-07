def translate(word)
	unless ('aeiou'.include? word[0]) || ('aeiou'.include? word[1])
		word = word + word[0] + word[1] + 'ay'
		word.slice!(0..1)
		return word
	end
		
	if 'aeiou'.include? word[0]
		word = word + word[0] + 'y'
	elsif 
		word = word + word[0] + 'ay'
		word.slice!(0)
		return word
	end
end