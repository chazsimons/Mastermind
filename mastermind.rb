require './lib/game'

# puts "Welcome to MASTERMIND"
# puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
# print ">"



game = Game.new

puts "Welcome to MASTERMIND"

loop do
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  print ">"
  input = gets.chomp.downcase
  if input == 'p' || input == 'play'
    game.start
  elsif input == 'i' || input == 'instructions'
    game.instructions # game.insructions
  elsif input == 'q' || input == 'quit'
    break
  end
end
