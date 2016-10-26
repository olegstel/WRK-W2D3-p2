require 'tdd'
require 'rspec'

describe Array do
  let(:arr) { [1, 2, 3, 4, 1] }

  describe "#my_uniq" do
    it "should return array of uniq numbers" do
      arr2 = [1, 1, 2, 3]
      expect(arr.my_uniq).to eql([1, 2, 3, 4])
      expect(arr2.my_uniq).to eq([1, 2, 3])
    end

    it "should not modify original array" do
      arr.uniq
      expect(arr).to eq([1, 2, 3, 4, 1])
    end
  end

  describe '#two_sum' do
    let(:two_sum_array) { [-1, 0, 2, -2, 1] }

    it "return array of paired indexes" do
      expect(two_sum_array.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "should return an empty array if no pairs sums to zero" do
      expect(arr.two_sum).to eq([])
    end
  end

  describe '#my_transpose' do

    it "should transpose two dimensional array" do
      two_dim_arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
      expect(two_dim_arr.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end

    it "should return an empty array if two dimensional array is empty" do
      empty_arr = [[]]
      expect(empty_arr.my_transpose).to eq(empty_arr)
    end
  end

  describe '#stock_picker' do

    it "should not sell a stock you haven't bought" do
      stock_prices = [9, 3, 1]
      expect(stock_prices.stock_picker).to_not eq([2, 0])
    end

    it "should return most profitable pair of days" do
      stock_prices = [7, 8, 10, 5]
      expect(stock_prices.stock_picker).to eq([0, 2])
    end
  end
end
