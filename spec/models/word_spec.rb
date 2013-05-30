require 'spec_helper'

describe Word do

	it 'has a valid factory' do
		FactoryGirl.create(:word).should be_valid
	end

	it "is invalid without english word" do
		FactoryGirl.build(:word, english: nil).should_not be_valid
	end

	it 'is invalid without polish word' do
		FactoryGirl.build(:word, polish: nil).should_not be_valid
	end
end