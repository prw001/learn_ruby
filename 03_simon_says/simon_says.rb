$little_words = ["a", "at", "an", "after", "the", "in", "over", "with", "on",
"if", "out", "over", "within", "without", "which", "is", "so", "under", "who", "there",
"to", "and", "or", "nor", "of"]

def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, n=2)
	phrase = ((word + " ") * n)
	phrase = phrase.slice(0, (phrase.length - 1))
	return phrase
end

def start_of_word(word, n=1)
	return word[0, n]
end

def first_word(phrase)
	words = phrase.split(' ')
	return words[0]
end

def titleize(phrase)
	words = phrase.split(' ')
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