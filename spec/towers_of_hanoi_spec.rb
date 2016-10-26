require 'rspec'
require 'towers_of_hanoi'

describe TowersOfHanoi do
  subject(:game) { TowersOfHanoi.new }

  it "should be an instance of TowersOfHanoi" do
    expect(game).to be_an_instance_of(TowersOfHanoi)
  end

  describe '#initialize' do
    it "should initialize towers" do
      expect(game.towers).to eql([[3, 2, 1], [], []])
      
    end
  end

end
