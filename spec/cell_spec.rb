require "spec_helper"

module Mastermind
  describe Cell do
  	context "#initialize" do
  	  it "returns an empty array(4) by default" do
  	  	cell=Cell.new
  	  	expect(cell.colors).to eq ["", "", "", ""] 
  	  end

  	  it "retunrs an emprty array with 4 places" do
  	  	cell=Cell.new
  	  	expect(cell.colors.size).to eq 4
  	  end
  	end

  	context "#color_choices" do
  	  it "returns the color choices" do
  	  	cell=Cell.new
  	  	expect(cell.color_choices).to eq ["R", "G", "B", "Y", "O", "BL", "W", "BR"]
  	  end
  	end

  end




end