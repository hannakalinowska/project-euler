require 'spec_helper'
require 'problem008'

describe '#product(number)' do
  it "returns number if one element in array" do
    product(['1']).should == 1
    product(['2']).should == 2
  end

  it "returns product if more elements" do
    product(['1', '2']).should == 2
    product(['2', '3']).should == 6
    product(['2', '3', '4']).should == 24
  end
end
