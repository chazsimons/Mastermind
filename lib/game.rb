require './lib/text'

class Game
  attr_reader :secret,
              :user_input,
              :base

  def initialize
    @base = ['R', 'G', 'Y', 'B']
    @secret = []
    @user_input = ""
    @positions = 0
    @text = Text.new
  end

  def create_code
    while secret.count < 4 do
      base.shuffle!
      secret << base[0]
    end
    secret
  end

  def get_guess
    guess = gets.chomp
    guess.upcase!
    @user_input = guess.split(//)

    if guess == "Q" || guess == "QUIT"
      exit(true)
    elsif guess == "C" || guess == "CHEAT"
      p "The secret code is '#{secret.join}'."
    end

    if @user_input.count > 4
      @text.guess_too_long
    elsif @user_input.count < 4
      @text.guess_too_short
    end
  end

  def winner
    get_guess
    until @user_input.count == 4 do
      get_guess
    end

    colors = (user_input & secret).count
    index = 0
    @positions = 0
    4.times do
      if user_input[index] == secret[index]
        @positions += 1
      end
    index += 1
    end

    if @positions < 4
      puts "'#{@user_input.join}' has #{colors} of the correct elements with #{@positions} in the correct positions."
    end
  end

  def start
    create_code
    start_time = Time.now.to_i
    count = 0
    until @positions == 4 do
      count += 1
      @text.announcement
      winner
      if count > 1
        puts "You have taken #{count} guesses."
      elsif puts "You have taken #{count} guess."
      end
    end
    end_time = Time.now.to_i
    total_time = end_time - start_time
    minutes = total_time / 60
    seconds = total_time % 60
    
    if total_time < 60
      puts "Congratulations! You guessed the sequence '#{user_input.join}' in #{count} guesses over #{total_time} seconds."
    elsif total_time < 120
      puts "Congratulations! You guessed the sequence '#{user_input.join}' in #{count} guesses over #{minutes} minute and #{seconds} seconds."
    elsif total_time > 120
      puts "Congratulations! You guessed the sequence '#{user_input.join}' in #{count} guesses over #{minutes} minutes and #{seconds} seconds."
    end
  end
end
