class AnagramsController < ApplicationController
	def index
    	@anagrams = Anagram.all
  	end

	def show
		@anagram = Anagram.find(params[:id])
	end

	def new
	end
	
	def create
		@anagram = Anagram.new(anagram_params)

		@anagram.result = check_anagram(@anagram.word1, @anagram.word2)

		if @anagram.save
			redirect_to @anagram
		else
			render 'new'
		end
	end

	
	private
	  def anagram_params
	    params.require(:anagram).permit(:word1, :word2, :result)
	  end

	  def check_anagram(word1, word2)
	  	
	  	if word1.length > 0 && word2.length > 0
 			
 			if word1.length.eql? (word2.length)
				word1 = word1.chars.sort.join
	  			word2 = word2.chars.sort.join

	  			if word1.eql? (word2)
	  				"They are anagrams!!!!"
	  			else
	  				"They aren't anagrams..."
	  			end

	  		else
	  			"They aren't anagrams..."
	  		end
 		else
	  		"Fill in the two fields please"	  		
	  	end	

	  end

end
