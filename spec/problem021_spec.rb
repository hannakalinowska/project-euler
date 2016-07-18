require 'spec_helper'
require 'problem021'

describe '#divisors_for(number)' do
  it "returns a list of divisors" do
    divisors_for(6).should == [1, 2, 3]
    divisors_for(7).should == [1]
  end
end

describe '#amicable_for(number)' do
  it "returns an amicable number for a given one" do
    amicable_for(220).should == 284
    amicable_for(284).should == 220
  end

  it "returns nil when no amicable" do
    amicable_for(2).should be_nil
  end
end
