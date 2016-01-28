class AnagramsController < ApplicationController
	def index
    	@anagrams = Anagram.all
  	end

	def show
		@anagram = Anagram.find(params[:id])

		@anagramAnalysis = anagram_checker(:word1, :word2)

	end

	def new
	end
	
	def create
		@anagram = Anagram.new(anagram_params)

		if @anagram.save
			redirect_to @anagram
		else
			render 'new'
		end
	end

	
	private
	  def anagram_params
	    params.require(:anagram).permit(:word1, :word2)
	  end

	  def anagram_checker(word1, word2)
	  	
	  	if @anagram.word1.length > 0 && @anagram.word2.length > 0
 			
 			if @anagram.word1.length.eql? (@anagram.word2.length)
				@word1 = @anagram.word1.chars.sort.join
	  			@word2 = @anagram.word2.chars.sort.join

	  			if @word1.eql? (@word2)
	  				"They are anagrams!!!!"
	  			else
	  				"They aren't anagrams..."
	  			end

	  		else
	  			"They aren't anagrams...Their length is diferent"
	  		end
 		else
	  		"Fill in the two fields please"	  		
	  	end	

	  end

end
