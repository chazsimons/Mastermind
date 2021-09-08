require './lib/text'


class Guess
  attr_reader :user_input,
              :positions

  def initialize(secret)
    @secret = secret
    @user_input = []
    @positions = 0
    @text = Text.new
  end


  def get_guess
    guess = gets.chomp
    guess.upcase!
    @user_input = guess.split(//)

    if guess == "Q" || guess == "QUIT"
      @text.exit_message
      exit(true)
    elsif guess == "C" || guess == "CHEAT"
      p "The secret code is '#{@secret.join}'."
    end
    length_check
  end

  def length_check
    if @user_input.count > 4
      @text.guess_too_long
    elsif @user_input.count < 4
      @text.guess_too_short
    end
  end

  def evaluate_guess
    get_guess
    until @user_input.count == 4 do
      get_guess
    end

    colors = (@user_input & @secret).count
    index = 0
    @positions = 0
    4.times do #each_with_index for when we add difficulty
      if @user_input[index] == @secret[index]
        @positions += 1
      end
    index += 1
    end

    if @positions < 4
      puts "'#{@user_input.join}' has #{colors} of the correct elements with #{@positions} in the correct positions."
    end
  end

end
