require_relative './spec_helper'
require_relative '../galaxy'

describe Galaxy do 
	let(:galaxy) {Galaxy.new} # intialize this to all the it 

		before(:each) do
			galaxy.conversion('how much is pish tegj glob glob ?')
		end

		describe '#conversion' do
  		it 'creates a new Galaxy' do
    		expect(galaxy).to be 
  		end

  		it 'should assign input to pish tegj glob glob ?' do

  			expect(galaxy.input).to eq 'pish tegj glob glob'
  		end 
  	end
	
end