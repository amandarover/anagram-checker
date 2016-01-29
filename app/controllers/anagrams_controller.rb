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

		@anagram.is_anagram = @anagram.check_anagram
		if @anagram.save
		 	redirect_to @anagram
		else
			render 'new'
		end
	end

	
	private
	  def anagram_params
	    params.require(:anagram).permit(:word1, :word2, :is_anagram)
	  end


end
