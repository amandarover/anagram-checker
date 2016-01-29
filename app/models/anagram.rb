class Anagram < ActiveRecord::Base
	validates :word1, presence: true,
                    length: { minimum: 1 }
    validates :word2, presence: true,
                    length: { minimum: 1 }

	def pretty_result
		if is_anagram
			"They are anagrams!!!!"
		else
			"They aren't anagrams..."
		end
	end

	def check_anagram

	  	if word1 && word2
 			if word1.length.eql? (word2.length)
				word1Sort = word1.chars.sort.join
	  			word2Sort = word2.chars.sort.join

	  			if word1Sort.eql? (word2Sort)
	  				true
	  			else
	  				false
	  			end

	  		else
	  			false
	  		end
 		
		end	
	end

end