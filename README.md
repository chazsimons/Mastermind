# Mastermind

Psuedocode

  1. Ask for user input, (p)lay (i)nstructions or (q)uit
    Should be able to take both letter or full word
    *play - play the game - start stopwatch to return time taken when they win.
    *instructions - give instructions to the game
    *quit - exit the game
  2. Generate secret code - don't output to player(*upcase the code*)
      tell computer to randomize 4 different characters(number random generator/array method called random(argument)/ choose colors randomly at index individually to allow for duplication)
  3. Get the player input (specify length of input)
      *can also (q)uit or (c)heat
      *cheat = the secret code outputted to user
      *needs to be a string
        -must be 4 characters long, warn the player if longer or shorter
        -if not r,b,y,g: warn them to try again
      *case insensitive(upcase to match secret code)*
  4. Compare the user input to secret code
    5. if user input == secret code, move to endgame
      -winning message and number of guesses and time taken
    6. if user input != secret code, give hint
        hint = number of colors correct, and number of positions correct.
  7. start loop again if not won

  Classes & Methods

    Game class - to evaluate player input against the secret code.
    Guess class - gets player guesses // could be a method in game class
    Return class - have user warnings for what they've entered


Notes and ideas

  Feedback example
  *'#{user_input}'* has *#{compare_colors}* of the correct elements with *#{compare_placement}* in the correct positions*
  You've taken *#{number of guesses taken}* guess

  number of colors correct = any? method for arrays
  number of correct positions = need a method to compare elements in arrays by index
  convert user input to an array inside methods as necessary.

  start_time = Time.now
  end_time = Time.now
  elapsed = end_time - start_time
