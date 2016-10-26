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

  describe '#move' do
    it "should move disc" do
      game.move(0, 1)
      expect(game.towers).to eq([[3, 2], [1], []])
    end
  end

  describe '#valid_move?' do
    it "should return true if it is a valid move" do
      expect(game.valid_move?(0, 2)).to be true
    end

    it "should return false if it is an invalid move" do
      expect(game.valid_move?(2, 0)).to be false
    end

    it "should return false if start disc is greater than end disc" do
      game.move(0, 1)
      expect(game.valid_move?(0, 1)).to be false
    end
  end

  describe '#won?' do

    it "should return true if game is over" do
      game = TowersOfHanoi.new([[], [3, 2, 1], []])
      expect(game.won?).to be true
    end

    it "should return false if game is not over" do
      expect(game.won?).to be false
    end
  end
end
