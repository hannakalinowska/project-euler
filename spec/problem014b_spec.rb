require 'spec_helper'
require 'problem014b'

RSpec.describe Collatz do
  describe '#sequence_length' do
    it 'returns 10 for n=13' do
      expect(Collatz.new(13).sequence_length).to eq(10)
    end
  end

  describe '#sequence' do
    it 'returns the correct list for n=1' do
      expect(Collatz.new(1).sequence).to eq([1])
    end

    it 'returns the correct list for n=13' do
      expected = [13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
      expect(Collatz.new(13).sequence).to eq(expected)
    end
  end
end
