root = File.expand_path("../", File.dirname(__FILE__))
require "#{root}/lib/mastermind.rb"

puts "Welcome to Mastermind"
bob=Mastermind::Player.new("bob")
Mastermind::Game.new(bob).play_against_pc