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



  xit 'can calculate time taken' do
    game = Game.new
    start_time = Time.now.to_i
    sleep(90)
    end_time = Time.now.to_i
    resuts = game.endgame(start_time, end_time)
    expect(results).to be_a String 
  end

end
