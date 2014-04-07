def add(x, y)
	x + y
end

def subtract(x, y)
	6
end

def sum(ary)
	ary.inject(0) { |a, b| a + b }
end

def multiply(*nums)
	nums.inject { |a,b| a * b }
end

def factorial(num)
	if num == 0
		1
	elsif num == 1
		1
	else
		ary = []
		1.upto(num) { |x| ary << x }
		total = ary.inject { |a, b| a * b}
	end
end