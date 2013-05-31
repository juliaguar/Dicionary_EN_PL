require 'spec_helper'

describe Word do

	it 'has a valid factory' do
		FactoryGirl.create(:word).should be_valid
	end

	it "is invalid without the english translation" do
		FactoryGirl.build(:word, english: nil).should_not be_valid
	end

	it 'is invalid without the polish translation' do
		FactoryGirl.build(:word, polish: nil).should_not be_valid
	end

	it 'is not valid if english polish word pair already exists' do
		FactoryGirl.create(:word)
		FactoryGirl.build(:word).should_not be_valid
	end
end