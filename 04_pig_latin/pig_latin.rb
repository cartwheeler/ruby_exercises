def translate(text)
	vowels = ["a", "e", "i", "o", "u"]
	words = text.split(" ")
	len = words.length
	
	for i in (0...len)
	letters = words[i].split("")
	first_letter = letters.first
	second_letter = letters[1]
	third_letter = letters[2]
		
		if first_letter + second_letter == "qu"
			letters.shift
			letters.shift
			words[i] = letters.join("") + first_letter + second_letter + "ay"

		
		elsif vowels.include? letters.first
			words[i] = words[i] + "ay"
		
		elsif
			
			if vowels.include? second_letter
			letters.shift
			words[i] = letters.join("") + first_letter + "ay"
			else

				if vowels.include? third_letter
				letters.shift
				letters.shift
				words[i] = letters.join("") + first_letter + second_letter + "ay"
				else
				letters.shift
				letters.shift
				letters.shift
				words[i] = letters.join("") + first_letter + second_letter + third_letter + "ay"
				end
			end
		end
	end
	text = words.join(" ")
end
