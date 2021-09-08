require 'rspec'
require './lib/guess'
require './lib/game'


describe Guess do
  it '#exists' do
    guess = Guess.new(['R', 'B', 'G', 'Y'])

    expect(guess).to be_an_instance_of Guess
  end

  it '#get_guess' do
    guess = Guess.new(['R', 'B', 'G', 'Y'])

    guess.get_guess

    expect(guess.user_input).to be_an(Array)
  end

  it '#length_check' do
    guess = Guess.new(['R', 'B', 'G', 'Y'])

    expect(guess.length_check).to eq false

  end

  it "can determine the positions correct of a guess" do
    guess = Guess.new(['R', 'B', 'G', 'Y'])
    allow(guess).to receive(:get_guess).and_return(['R', 'G', 'B', 'Y'])
    guess.evaluate_guess

    expect(guess.positions).to eq 4
  end


end
