def translate(phrase)
	vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'];
	punctuation = ['.', '!', '?', ',', ';', '-', ':']
	pig_words = []
	split_phrase = phrase.split(' ')
	pig_phrase = ''
	punct_holder = ''
	letter_holder = ''
	letter_index = 0
	needs_cap = false;

	for word in split_phrase
		if (word[letter_index]).ord > 64 && (word[letter_index]).ord < 91
			word[letter_index] = word[letter_index].downcase
			needs_cap = true;
		end
		while !(vowels.include? word[letter_index])
			if word[letter_index] == 'q' and word[letter_index + 1] == 'u'
				letter_holder += 'qu'
				letter_index += 2
			else
				letter_holder += word[letter_index]
				letter_index += 1
			end
		end

		if needs_cap
			word.downcase!
			word[letter_index] = word[letter_index].upcase
			needs_cap = false
		else
			word.downcase!
		end

		if punctuation.include? word[-1]
			pig_words << word.slice(letter_index, word.length - letter_index - 1) +
						 letter_holder + "ay" + word[-1]
		else
			pig_words << word.slice(letter_index, word.length) +
						 letter_holder + "ay"
		end
		letter_holder = ''
		letter_index = 0
	end

	for word in pig_words
		pig_phrase += word + " "
	end

	pig_phrase = pig_phrase.slice(0, pig_phrase.length - 1)
	return pig_phrase
end