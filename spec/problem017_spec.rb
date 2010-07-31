require 'spec/spec_helper'
require 'problem017'

describe '#to_words' do
  it {to_words(1).should == 'one'}
  it {to_words(10).should == 'ten'}
  it {to_words(11).should == 'eleven'}
  it {to_words(23).should == 'twenty three'}
  it {to_words(104).should == 'one hundred and four'}
  it {to_words(215).should == 'two hundred and fifteen'}
  it {to_words(236).should == 'two hundred and thirty six'}
  it {to_words(1000).should == 'one thousand'}
end
