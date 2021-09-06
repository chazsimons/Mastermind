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
    expect(game.get_guess.count).to eq 4
    expect(game.get_guess).to be_an(Array)
  end

  # it "can determine the positions correct of a guess" do
  #   game = Game.new
  #   game.user_input = ['R', 'R', 'B', 'G']
  #   game.secret = ['R', 'G', 'B', 'Y']
  #
  #   expect(game.winner).to eq 2
  # end

  # it '#start method' do
  #   game = Game.new
  #
  #
  # end



end
