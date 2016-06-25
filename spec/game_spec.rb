require "spec_helper"
module Mastermind

  describe Game do 
    context "#check" do
      it "returns all 'RED' if colors is the same as guess_array" do
	      game=Game.new("bob")
	      allow(game).to receive(:colors){["R", "R", "R", "R"]}
	      allow(game).to receive(:guess_array){["R", "R", "R", "R"]}
	      expect(game.check).to eq ["RED", "RED", "RED", "RED"]
  		end
    
    end



  end

end