require 'spec/spec_helper'
require 'problem005'

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
