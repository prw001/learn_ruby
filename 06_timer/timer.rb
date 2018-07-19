class Timer
	def initialize
		self.seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
	end

	def time_string
		total_seconds = seconds
		if total_seconds == 0
			return "00:00:00"
		else
			hours = total_seconds / 3600
			minutes = (total_seconds / 60) % 60
			seconds = (total_seconds % 60) % 60
			return padded(hours) + ":" + padded(minutes) +  ":" + padded(seconds)
		end
	end

	def padded(digits)
		if digits == 0
			return '00'
		elsif digits > 0 && digits < 10
			return '0' + digits.to_s
		else
			return digits.to_s
		end
	end

	def seconds
		return @seconds
	end
end
