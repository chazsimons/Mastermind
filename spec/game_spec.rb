require 'rspec'
require './lib/game'

describe Game do
  it "is an instance of game" do
    game = Game.new
    expect(game).to be_a Game
  end

  it "creates a secret code" do
    game = Game.new
    expect(game.create_code.length).to eq 4
  end

  it "can take a users input" do
    game = Game.new

    expect(game.get_guess).to eq ['R', 'G', 'B', 'Y']

    expect(game.get_guess).to be_an(Array)
  end

  it 'can check the length' do
    game = Game.new
    result_long = ['r', 'g', 'b', 'y', 'r']
    result_short = ['r', 'r']

    expect(result_long.length_check).to be true

    expect(result_short.length_check).to be true

  end

  it "can determine the positions correct of a guess" do
    game = Game.new
    game.user_input = ['R', 'R', 'B', 'G']
    game.secret = ['R', 'G', 'B', 'Y']

    expect(game.evaluate_guess).to eq 2
  end

  # it 'can calculate time taken' do
  #   game = Game.new
  #   start_time = Time.now.to_i
  #   end_time = Time.now.to_i
  #
  # end



end
