def add(a, b)
	return a + b
end

def subtract(a, b)
	return a - b
end

def sum(c)
	if c == []
		return 0
	else
		return c.sum
	end
end

def multiply(*args)
	total = 1
	if args.include? 0
		return 0
	else
		for n in args
			total *= n
		end
		return total
	end
end

def power(a, b)	
	if b == 1
		return a
	else
		return a * power(a, (b-1))
	end
end

def factorial(a)
	if a == 0
		return 1
	elsif a == 1
		return 1
	else
		return a * factorial((a-1))
	end			
end

