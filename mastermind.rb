require './lib/game'

puts "Welcome to MASTERMIND"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
print ">"

input = gets.chomp.downcase

game = Game.new

loop do
  if input == 'p' || input == 'play'
    game.start
    break
  elsif input == 'i' || input == 'instructions'
    # game.instructions
    break
  elsif input == 'q' || input == 'quit'
    break
  end
end
