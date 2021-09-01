
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
end

# game = Game.new
# code = game.create_code
