class PigLatinizer
	
	def piglatinize(word)
		first = word.downcase.chars.first.match(/['a','e','i','o','u']/)
		splitted = word.split(/(?=[aeiou])/,2)
		first.nil? ? (splitted[1] + splitted[0] + "ay") : word + "way"
	end
	
	def to_pig_latin(sent)
		sent.split(" ").map {|word| piglatinize(word)}.join(" ")
	end

end