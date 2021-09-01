
class Game
  attr_reader :secret,
              :user_input

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
  end

  def cheat_code
    puts secret
  end

  def announcement
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,
          (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
          What's your guess?"
    puts '>'
    user_input = gets.chomp
    user_input.upcase!
    user_input.split(//)
    if user_input.length < 4 || user.length > 4
      puts "Please enter a 4 letter combo of the above colors."
    else
      compare_input
    end
  end

  def compare_input


end
