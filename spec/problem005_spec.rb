require 'spec/spec_helper'
require 'problem005'

describe Integer do
  describe '#prime?' do
    [2, 3, 5, 7, 2029, 3413, 7919].each do |number|
      it "#{number} returns true" do
        number.prime?.should be_true
      end
    end

    [1, 4, 6, 9, 15, 2000, 3414, 7921].each do |number|
      it "#{number} returns false" do
        number.prime?.should be_false
      end
    end
  end
end

describe Array do
  describe '#set_delete' do
    it {[2, 3].set_delete([2]).should == [3]}
    it {[2, 2, 3].set_delete([2]).should == [2, 3]}
    it {[2, 2, 3].set_delete([2, 2]).should == [3]}
    it {[2, 2, 3].set_delete([2, 3]).should == [2]}
    it {[2, 2, 3].set_delete([3]).should == [2, 2]}
  end
end

describe '#prime_factors_for' do 
  it {prime_factors_for(3).should == [3]}
  it {prime_factors_for(4).should == [2, 2]}
  it {prime_factors_for(6).should == [2, 3]}
  it {prime_factors_for(28).should == [2, 2, 7]}
end
