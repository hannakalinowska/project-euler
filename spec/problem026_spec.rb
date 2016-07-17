require 'spec_helper'
require './problem026'

describe '#recurring?(string, substring)' do
  specify {recurring?('111', '1').should be_true}
  specify {recurring?('123123123', '123').should be_true}
  specify {recurring?('1123123123', '123').should be_true}
  specify {recurring?('1231231', '123').should be_true}
  specify {recurring?('', '').should be_true}

  specify {recurring?('123', '1').should be_false}
  specify {recurring?('1231234', '123').should be_false}
  specify {recurring?('', '123').should be_false}
end

describe '#find_recurrence' do
  it "returns recurring string" do
    find_recurrence('111').should == '1'
    find_recurrence('123123123').should == '123'
    find_recurrence('1123123123').should == '123'
    find_recurrence('1231231').should == '123'
  end

  it "returns nil if no recursion" do
    find_recurrence('123').should be_nil
    find_recurrence('1231234').should be_nil
  end

  it "returns nil if empty string" do
    find_recurrence('').should be_nil
  end
end
