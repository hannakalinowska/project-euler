require 'spec_helper'
require 'problem035'

describe Array do
  describe "#rotate" do
    it "puts the first element at the end of the array" do
      [1,2,3].rotate!.should == [2,3,1]
    end

    it "returns empty array when initial array empty" do
      [].rotate!.should == []
    end

    it "modifies an existing object" do
      array = [1,2]
      new_array = array.rotate!
      array.should == [2, 1]
      new_array.should == [2,1]
    end
  end
end

describe '#circular_prime?' do
  it "returns true for circular primes" do
    [2, 3, 5, 7, 11, 13, 17, 31, 37].each do |number|
      circular_prime?(number).should be_truthy
    end
  end

  it "returns false for non-circular primes" do
    [4, 8, 12, 14, 15].each do |number|
      circular_prime?(number).should be_falsey
    end
  end
end
