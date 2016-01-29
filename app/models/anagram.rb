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
end