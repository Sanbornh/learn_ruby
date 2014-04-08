class RPNCalculator

	attr_accessor :value

	def initialize
		@stack = []
	end

	def push(num)
		@stack.push(num)
	end

	def plus
		if @stack.size < 2
			raise "calculator is empty"
		else
			value1 = @stack.pop
			value2 = @stack.pop
			@value = value1 + value2
			@stack.push(@value)
			return @value
		end
	end

	def minus
		if @stack.size < 2
			raise "calculator is empty"
		else
			value1 = @stack.pop
			value2 = @stack.pop
			@value = value2 - value1
			@stack.push(@value)
			return @value
		end
	end

	def divide
		if @stack.size < 2
			raise "calculator is empty"
		else
			value1 = @stack.pop.to_f
			value2 = @stack.pop.to_f
			@value = value2/value1
			@stack.push(@value)
			return @value
		end
	end

	def times
		if @stack.size < 2
			raise "calculator is empty"
		else
			value1 = @stack.pop.to_f
			value2 = @stack.pop.to_f
			@value = value2 * value1
			@stack.push(@value)
			return @value
		end
	end

	def tokens(string)
		string = string.split(" ")
		@tokens = []
		string.each do |x|
			if x.to_i.to_s == x
				@tokens << x.to_i
			else
				@tokens << x.to_sym
			end
		end
		return @tokens
	end

	def evaluate(string)
		tokens(string)
		@tokens.each do |x|
			if x.is_a? Fixnum
				@stack.push(x)
			elsif x.is_a? Symbol
				case x
				when :* then times
				when :+ then plus
				when :- then minus
				when :/ then divide
				end
			end
		end
		return @value
	end
end


