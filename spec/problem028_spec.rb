require 'spec_helper'
require 'problem028'

describe '#corner_sum(length)' do
  specify {corner_sum(5).should == 76}
  specify {corner_sum(3).should == 24}
  specify {corner_sum(1).should == 1}
end
