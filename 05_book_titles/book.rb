$little_words = ["a", "at", "an", "after", "the", "in", "over", "with", "on",
"if", "out", "over", "within", "without", "which", "is", "so", "under", "who", "there",
"to", "and", "or", "nor", "of"]

class Book
	def title=(book_title)
		@title = correct_title(book_title)
	end

	def correct_title(book_title)
		words = book_title.split(' ')
		titleized = ''
		for word in words
			unless $little_words.include? word
				word[0] = word[0].upcase
			end
			titleized += word + " "
		end
	titleized = titleized.slice(0, titleized.length - 1)
	titleized[0] = titleized[0].upcase
	return titleized
	end

	def title
		return @title
	end
end
