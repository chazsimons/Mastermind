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

  # it "can take a users input" do
  #   game = Game.new
  #   allow(game).to receive(:user_input).and_return(['R', 'G', 'B', 'Y'])
  #   allow(game).to receive(:secret).and_return(['R', 'R', 'R', 'R'])
  #
  #
  #   expect(game.get_guess).to be_an(Array)
  # end

  it 'can check the length' do
    game = Game.new
    allow(game).to receive(:user_input).and_return(['R', 'G', 'B', 'Y', 'R', 'G'])

    expect(game.length_check).to be true

  end

  it "can determine the positions correct of a guess" do
    game = Game.new
    allow(game).to receive(:create_code).and_return(['R', 'R', 'R', 'R'])
    allow(game).to receive(:get_guess).and_return(['R', 'G', 'B', 'Y'])
    game.evaluate_guess

    expect(game.positions).to eq 1
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
