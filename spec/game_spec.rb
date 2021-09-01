require 'rspec'
require './lib/game'

describe Game do
  it "is an instance of game" do
    game = Game.new
    expect(game).to be_a Game
  end

  it "creats a secret code" do
    game = Game.new
    expect(game.create_code.length).to eq 4
  end


end
