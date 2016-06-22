module Mastermind
  class Cell

  	attr_reader :colors, :color_choices

  	def initialize(colors=["", "", "", ""])
  	  @colors=colors
  	end

  	def color_choices
  	  color_choices=["R", "G", "B", "Y", "O", "BL", "W", "BR"]
  	end

  	def randomize(colors=@colors)
  	  @colors.map! { |color| color=color_choices.sample }
  	  print @colors
  	end

  end

end
