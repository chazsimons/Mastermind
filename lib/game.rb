require './lib/text'
require './lib/guess'

class Game
  attr_reader :secret,
              :guess,
              :base

  def initialize
    @base = ['R', 'G', 'Y', 'B']
    @secret = []
    @guess = Guess.new(@secret)
    @text = Text.new
  end

  def create_code
    while secret.count < 4 do
      base.shuffle!
      secret << base[0]
    end
    secret
  end

  def start
    create_code
    start_time = Time.now.to_i
    @count = 0
    @text.announcement
    until @guess.positions == 4 do
      @count += 1
      @guess.evaluate_guess
      if @count > 1
        puts "You have taken #{@count} guess(es)."
        @text.keep_guessing
      else
        puts "You have taken #{@count} guess."
        @text.keep_guessing
      end
    end
    end_time = Time.now.to_i
    endgame(start_time, end_time)
  end

  def endgame(start_time, end_time)
    total_time = end_time - start_time
    minutes = total_time / 60
    seconds = total_time % 60

    if total_time < 60
      puts "Congratulations! You guessed the sequence '#{@guess.user_input.join}' in #{@count} guesses over #{total_time} seconds."
    elsif total_time < 120
      puts "Congratulations! You guessed the sequence '#{@guess.user_input.join}' in #{@count} guesses over #{minutes} minute and #{seconds} seconds."
    else
      puts "Congratulations! You guessed the sequence '#{@guess.user_input.join}' in #{@count} guesses over #{minutes} minutes and #{seconds} seconds."
    end
  end
end
