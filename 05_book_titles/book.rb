class Book
	def title=(text)

	words = text.split(" ")
	len = words.length
	little_words = ["a", "an", "in","the", "of", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "over"]

	words[0].capitalize!
	words[1..len].each do |word|
		unless little_words.include? word
			word.capitalize!
		end
	end
	words.join(" ")

	@title = words.join(" ")
	end


	def title
		@title
	end

end
