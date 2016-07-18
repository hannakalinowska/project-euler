require 'spec_helper'
require 'prime'

describe Integer do
  describe '#prime?' do
    [2, 3, 5, 7, 2029, 3413, 7919].each do |number|
      it "#{number} returns true" do
        expect(number.prime?).to be_truthy
      end
    end

    [1, 4, 6, 9, 15, 2000, 3414, 7921].each do |number|
      it "#{number} returns false" do
        expect(number.prime?).to be_falsey
      end
    end
  end
end
