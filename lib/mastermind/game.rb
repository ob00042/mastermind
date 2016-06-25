module Mastermind

  class Game

  	attr_accessor :player, :colors, :guess_array

  	def initialize(player)
  		@player=Player.new
  		@colors=Cell.new.randomize
  	end

  	def making_guess_array
  	  @guess_array=[]
  	  4.times do
  	  	puts "Give your guess in form of either one of 'R', 'G', 'B', 'Y', 'O', 'BL', 'W', 'BR'"
  	    guess=gets.chomp
  	  	@guess_array<<(guess)
  	  end
  	  @guess_array
  	end

  	def check
  	  @indication_array=[]
  	  i=0
  	  
  	  loop do
  	  	  
	  	  if @colors[i]==@guess_array[i]
	  	  	@indication_array<<"RED"
	  	  else
	  	  	@indication_array<<"NONE"
	  	  end
	  	  if @colors.include?(@guess_array[i]) && @indication_array[i]!="RED"
  		  	@indication_array[i]="WHITE"
  		  end
	  	  i+=1
	  	  break if i==4
  		end
  		
  		@indication_array
  	end

  	def game_over(indication_array)
  	  @indication_array==["RED", "RED", "RED", "RED"] ? true : false
  	end

  	def play
  	  puts "Let's play Mastermind!"
  	  10.times do
  	  	@guess_array=making_guess_array
  	  	print @guess_array
  	  	puts ""
  	  	@indication_array=check
  	  	print @indication_array
  	  	puts ""
  	  	if game_over(@indication_array)
  	  		puts "You won!"
  	  		return
  	  	end
  	  end
  	  puts "You lost!"
  	end

  	def make_colors_array
  	  puts "Choose the colors!"
  	  @colors=[]
  	  4.times do
  	  	puts "Give a color in the form of either one of 'R', 'G', 'B', 'Y', 'O', 'BL', 'W', 'BR'"
  	  	color=gets.chomp
  	  	@colors<<color
  	  end
  	  @colors
  	end

  	def pc_guess_array
  	  @guess_array=[]
  	  4.times do
  	    guess=['R', 'G', 'B', 'Y', 'O', 'BL', 'W', 'BR'].sample
  	    @guess_array<<guess
  	  end
  	  @guess_array
  	end

  	def smart_pc_guess_array
  	  @prev_guess=@guess_array
  	  @guess_array=[]
  	  i=0
  	  loop do
  	  	if @indication_array[i]=="RED"
  	  	  @guess_array[i]=@prev_guess[i]
  	  	else
  	  	  guess=['R', 'G', 'B', 'Y', 'O', 'BL', 'W', 'BR'].sample
  	  	  @guess_array<<guess
  	  	end
  	  	i+=1
  	  	break if i==4
  	  end
  	  @guess_array
  	end

  	def play_against_pc
  	  puts "Let's play against the PC"
  	  @colors=make_colors_array
  	  print @colors
  	  puts ""
  	  @guess_array=pc_guess_array
  	  print @guess_array
  	  puts ""
  	  @indication_array=check
  	  print @indication_array
  	  puts ""
  	  9.times do
  	    @guess_array=smart_pc_guess_array
  	    print @guess_array
  	    puts ""
  	    @indication_array=check
  	    print @indication_array
  	    puts ""
  	    if game_over(@indication_array)
  	      puts "PC won!! AI will prevail!"
  	 	  return
  	    end
  	  end
  	  puts "You win!!!"
  	end
  end

end