
class Game
  attr_reader :secret,
              :user_input,
              :base

  def initialize
    @base = ['R', 'G', 'Y', 'B']
    @secret = []
    @user_input = ""
  end

  def create_code
    while secret.count < 4 do
      base.shuffle!
      secret << base[0]
    end
    secret
  end

  def announcement
    puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
      What's your guess?"
    print '>'
  end

  def instructions
    puts "To play this game, guess the secret code. The secret code consists of any combination of these 4 letters (r, g, b and y)."
    puts "Your guess must consist of those 4 characters only. Repeats of the characters are allowed example: bbry. Hints are provided"
    puts "about the correct colors and positions of your guess. Can you narrow it down to win?"
    puts "If you are getting frustrated while playing, press 'q' to quit or 'c' to cheat (you lazy bum :p)."
  end

  def get_guess
    @user_input = gets.chomp
    user_input.upcase!
    user_input.split(//)
    if user_input == ['Q'] || ['Q','U','I','T']
      exit(true)
    elsif user_input == ['C'] || ['C','H','E','A','T']
      p secret
    end
    if user_input.count > 4 || user_input < 4
      puts "Guesses must consist of only 4 characters!"
    end
    if user_input[0] != ["r", "g", "b", "y"]
  end

  def winner?
    create_code
    get_guess
    colors = 4 - (user_input - secret).count
    index = 0
    positions = 0
    4.times do
      if user_input[index] == secret[index]
        positions += 1
      end
    index += 1
    puts colors
    puts positions
  end

  # def start
  #   create_code
  #   count = 0
  #   loop do
  #     count += 1
  #     announcement
  #     winner?
  #     #some condition to break the loop
  #   end
  #   puts "Congratulations! You guessed the sequence '#{user_input}' in #{count} guesses over #time."
  # end
  # end
end
end

# game = Game.new
# code = game.create_code
