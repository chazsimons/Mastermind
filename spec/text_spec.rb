require 'rspec'
require './lib/text'


describe Text do
  it 'is an instance of its class' do
    text = Text.new

    expect(text).to be_a(Text)
  end

  xit 'can welcome new players' do
    text = Text.new
    results = text.welcome

    expect(results).to be_a(String)
  end

  xit 'can display instructions' do
    text = Text.new
    results = text.instructions

    expect(results).to be_a(String)
  end

  xit 'can prompt for a guess' do
    text = Text.new
    results = text.announcement

    expect(results).to be_a(String)
  end

end
