require "spec_helper"

module Mastermind
describe Player do 
  context "#initialize" do
  	it "initializes a player with name 'bob'" do
  	  player=Player.new("bob")
  	  expect(player.name).to eq "bob"
  	end
  end

end

end