class Text

  def initialize
  end

  def instructions
    puts "To play this game, guess the secret code. The secret code consists of any combination of these 4 letters (r, g, b and y)."
    puts ""
    puts "Your guess must consist of those 4 characters only. Repeats of the characters are allowed [example: bbry]. Hints are provided"
    puts "about the correct colors and positions of your guess. Can you narrow it down to win?"
    puts ""
    puts "If you are getting frustrated while playing, press 'q' to quit or 'c' to cheat (you lazy bum :p)."
    puts ""
  end

  def announcement
    puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
      What's your guess?"
    print '>'
  end

  def welcome
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
    print ">"
  end

  def repeat
    puts "Would you like to (p)lay again or (q)uit?"
    print ">"
  end
end
