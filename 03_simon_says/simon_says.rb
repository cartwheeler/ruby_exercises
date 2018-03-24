#write your code here

def echo(text)
	text
end

def shout(text)
	text.upcase
end

def repeat(text, times=2)
	([text] * times).join ' '
end

def start_of_word(text, count)
	text[0...count]
end

def first_word(text)
	text.split(' ').first
end

def titleize(text)
	words = text.split(" ")
	len = words.length
	little_words = ["a", "an", "the", "and", "but", "or", "for", "nor", "on", "at", "to", "from", "by", "over"]

	words[0].capitalize!
	words[1..len].each do |word|
		unless little_words.include? word
			word.capitalize!
		end
	end
	words.join(" ")
end
