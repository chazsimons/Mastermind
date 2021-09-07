require './lib/game'
require './lib/text'

text = Text.new

puts "Welcome to Mastermind!"


loop do
  text.welcome
  input = gets.chomp.downcase
  if input == 'p' || input == 'play'
    game = Game.new
    game.start
    break
  elsif input == 'i' || input == 'instructions'
    text.instructions # game.insructions
  elsif input == 'q' || input == 'quit'
    text.exit_message
    exit(true)
  end
end

loop do
  text.play_again
  input = gets.chomp.downcase
  if input == 'p' || input == 'play'
    game = Game.new
    game.start
  elsif input == 'q' || input == 'quit'
    exit(true)
  end
end
