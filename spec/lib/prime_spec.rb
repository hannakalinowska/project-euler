require 'spec/spec_helper'
require 'lib/prime'

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
