require 'rails_helper'

describe Anagram do

	before :each do
    	@anagram = Anagram.new
	end


	describe "#new" do
	    it "returns a Anagram object" do
	        @anagram.should be_an_instance_of Anagram
	    end
	end

	describe "#check-roma-amor-anagram" do
	    it "checks if roma and amor are anagrams" do
	    	@anagram.word1 = "roma"
	    	@anagram.word2 = "amor"
	        @anagram.check_anagram.should eql true
	    end
	end

	describe "#check-ab-ba-anagram" do
	    it "checks if ab and ba are anagrams" do
	    	@anagram.word1 = "ab"
	    	@anagram.word2 = "ba"
	        @anagram.check_anagram.should eql true
	    end
	end

	describe "#check-abc-ba-not-anagram" do
	    it "checks if abc and ba are not anagrams" do
	    	@anagram.word1 = "abc"
	    	@anagram.word2 = "ba"
	        @anagram.check_anagram.should eql false
	    end
	end

	describe "#check-nil-arara-not-anagram" do
	    it "checks if nil and arara are not anagrams" do
	    	@anagram.word1 = ""
	    	@anagram.word2 = "arara"
	        @anagram.check_anagram.should eql false
	    end
	end

end