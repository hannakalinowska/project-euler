require 'spec_helper'
require 'problem030'

describe '#powerful?(number, power)' do
  it "returns true" do
    powerful?(1634, 4).should be_truthy
    powerful?(8208, 4).should be_truthy
  end

  it "returns false" do
    powerful?(23, 2).should be_falsey
  end
end
