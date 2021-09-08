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

  # it 'can calculate time taken' do
  #   game = Game.new
  #   start_time = Time.now.to_i
  #   sleep(90)
  #   end_time = Time.now.to_i
  #
  #   expect(game.endgame).to eq(90)
  # end

end
