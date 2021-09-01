require './lib/game'

puts "Welcome to MASTERMIND"
puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
puts ">"

input = gets.chomp

if input == 'p' || 'P' || "play" || "Play"
    puts game.announcement

  elsif input == 'q' || 'Q' || 'quit' || 'Quit'
    do #exit method
  elsif input == 'i' || 'I' || "instructions" || "Instructions"
    do #instructions method/class
end
