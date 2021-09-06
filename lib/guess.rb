# class Guess
#   attr_reader :user_input
#
#
#   def initialize
#     @user_input = ""
#   end
# 
#   def get_guess
#     guess = gets.chomp
#     guess.upcase!
#     @user_input = guess.split(//)
#
#     if guess == "Q" || guess == "QUIT"
#       exit(true)
#     elsif guess == "C" || guess == "CHEAT"
#       p "The secret code is '#{secret.join}'."
#     end
#     length_check
#   end
#
#   def length_check
#     if @user_input.count > 4
#       @text.guess_too_long
#     elsif @user_input.count < 4
#       @text.guess_too_short
#     end
#   end
#
#
# end
