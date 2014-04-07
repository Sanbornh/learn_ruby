def echo(command)
	command
end

def shout(command)
	command.upcase
end

def repeat(*commands)
	if commands.length == 1
		"#{commands[0]} #{commands[0]}"
	else
		word = "#{commands[0]} #{commands[0]} #{commands[0]}"	
	end
end

def start_of_word(word, number)
	string = String.new
	number.times { |x| string << word[x] }
	string
end

def first_word(string)
	string = string.split(" ")
	string[0]
end

def titleize(word)
	ary = word.split(" ")
	collection = []
	ary.each do |word| 
		if word.length > 4
			collection << word.capitalize
		else 
			collection << word
		end
	end
	collection[0] = collection[0].capitalize

	if collection.length == 6 then collection[5] = collection[5].capitalize end
	collection * " "

end