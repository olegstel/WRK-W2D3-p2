require 'tdd'
require 'rspec'

describe Array do
  let(:arr) { [1, 2, 3, 4, 1] }

  describe "#my_uniq" do
    it "should return array of uniq numbers" do
      expect(arr.my_uniq).to eql([ 1, 2, 3, 4])
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
end
