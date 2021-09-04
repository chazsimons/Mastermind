require './lib/game'
require './lib/text'

# puts "Welcome to MASTERMIND"
# puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
# print ">"



game = Game.new
text = Text.new

puts "Welcome to MASTERMIND"
loop do
  text.welcome
  input = gets.chomp.downcase
  if input == 'p' || input == 'play'
    game.start
  elsif input == 'i' || input == 'instructions'
    text.instructions # game.insructions
  elsif input == 'q' || input == 'quit'
    break
  end
end
