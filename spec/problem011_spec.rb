require 'spec_helper'
require 'problem011'

describe 'problem011' do
  before do
    @array = %w(1 2 3 4
               5 6 7 8
               9 0 1 2
               3 4 5 6).map(&:to_i)
  end

  describe '#column_subarray' do
    it "returns four elements" do
      column_subarray(0, @array).should == [1, 5, 9, 3]
      column_subarray(1, @array).should == [2, 6, 0, 4]
    end

    it "returns empty array" do
      column_subarray(4, @array).should == []
    end
  end

  describe '#row_subarray' do
    it "returns four elements" do
      row_subarray(0, @array).should == [1, 2, 3, 4]
      row_subarray(4, @array).should == [5, 6, 7, 8]
    end

    it "returns empty array" do
      row_subarray(1, @array).should == []
    end
  end

  describe '#left_diagonal_subarray' do
    it "returns four elements" do
      left_diagonal_subarray(3, @array, 3).should == [4, 7, 0]
      left_diagonal_subarray(2, @array, 3).should == [3, 6, 9]
    end

    it "returns empty array" do
      left_diagonal_subarray(2, @array, 4).should == []
      left_diagonal_subarray(1, @array, 3).should == []
    end
  end

  describe '#right_diagonal_subarray' do
    it "returns four elements" do
      right_diagonal_subarray(0, @array, 3).should == [1, 6, 1]
      right_diagonal_subarray(1, @array, 3).should == [2, 7, 2]
    end

    it "returns empty array" do
      right_diagonal_subarray(1, @array, 4).should == []
      right_diagonal_subarray(3, @array, 2).should == []
    end
  end
end
