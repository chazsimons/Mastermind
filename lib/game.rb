
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

  def get_guess
    @user_input = gets.chomp
    user_input.upcase!
    user_input.split(//)
  end

  def start
    create_code

    loop do
      announcement
      get_guess
        if user_input == ['Q'] || ['Q', 'U','I','T']
          break
        elsif user_input == ['C'] || ['C','H','E','A','T']
          p secret
        end
      winner?
      if winner? == true
        break
      end
    end
  end
end

# game = Game.new
# code = game.create_code
