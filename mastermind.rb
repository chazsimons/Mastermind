require './lib/game'
require './lib/text'

game = Game.new
text = Text.new

puts "Welcome to MASTERMIND"
loop do
  text.welcome
  input = gets.chomp.downcase
  if input == 'p' || input == 'play'
    game.start
    break
  elsif input == 'i' || input == 'instructions'
    text.instructions # game.insructions
  elsif input == 'q' || input == 'quit'
    exit(true)
  end
end

loop do
  text.play_again
  input = gets.chomp.downcase
  if input == 'p' || input == 'play'
    game.start #doesn't call a new instance of start. Just returns the win of first game instantly.
  elsif input == 'q' || input == 'quit'
    exit(true)
  end
end
