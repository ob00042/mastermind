module Mastermind

  class Game

  	attr_reader :player

  	def initialize(player)
  		@player=Player.new
  		@colors=Cell.new.randomize
  	end

  	def making_guess_array
  	  guess_array=[]
  	  4.times do
  	  	puts "Give your guess in form of either one of 'R', 'G', 'B', 'Y', 'O', 'BL', 'W', 'BR'"
  	    guess=gets.chomp
  	  	guess_array<<(guess)
  	  end
  	  guess_array
  	end

  	def check(guess_array)
  	  indication_array=[]
  	  i=0
  	  loop do
	  	  if @colors[i]==guess_array[i]
	  	  	indication_array<<"RED"
	  	  elsif @colors.include?(guess_array[i])
	  	  	indication_array<<"WHITE"
	  	  else
	  	  	indication_array<<""
	  	  end
	  	  i+=1
	  	  break if i==4
  		end
  		indication_array
  	end

  	def game_over(indication_array)
  	  indication_array==["RED", "RED", "RED", "RED"] ? true : false
  	end

  	def play
  	  puts "Let's play Mastermind!"
  	  10.times do
  	  	guess_array=making_guess_array
  	  	puts guess_array
  	  	indication_array=check(guess_array)
  	  	puts indication_array
  	  	if game_over(indication_array)
  	  		puts "You won!"
  	  		return
  	  	end
  	  end
  	  puts "You lost!"
  	end
  end

end