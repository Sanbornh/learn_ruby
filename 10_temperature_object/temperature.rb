class Temperature

	def initialize(hash)
		@fahr = hash[:f]
		@cels = hash[:c]
	end

	def to_fahrenheit
		if @fahr 
			@fahr
		else
			(@cels * 9/5) + 32
		end
	end

	def to_celsius
		if @cels
			@cels
		else
			@cels = (@fahr - 32) * 5/9
		end
	end

	def self.in_celsius(num)
		Temperature.new({:c => num})
	end

	def self.in_fahrenheit(num)
		Temperature.new({:f => num})
	end

end


class Celsius < Temperature

	def initialize(temp)
		@cels = temp
	end

end

class Fahrenheit < Temperature

	def initialize(temp)
		@fahr = temp
	end
	
end




