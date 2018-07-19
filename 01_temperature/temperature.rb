def ftoc(temp)
	if temp == 32
		return 0
	else
		return (temp - 32) * 5 / 9
	end
end

def ctof(temp)
	if temp == 0
		return 32
	elsif temp == 100
		return 212
	else
		return (temp * 9.0 / 5.0) + 32
	end
end