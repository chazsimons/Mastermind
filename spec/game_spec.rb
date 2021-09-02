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

  xit "can take a users input" do
    game = Game.new
    expect(game.get_guess.length).to eq 4
    expect(game.get_guess).to be_an(Array)
  end

  it "can check colors and positions of guess" do
    game = Game.new

    expect(game.winner?).to eq 5
  end

end
