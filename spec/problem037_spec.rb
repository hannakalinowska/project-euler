require 'spec_helper'
require 'problem037'

RSpec.describe "Truncatable primes" do
  describe '#left_to_right_primes' do
    it 'returns true' do
      number = 3797
      expect(left_to_right_primes(number.to_s)).to eq(true)
    end

    it 'returns false' do
      number = 333
      expect(left_to_right_primes(number.to_s)).to eq(false)
    end
  end

  describe '#right_to_left_primes' do
    it 'returns true' do
      number = 3797
      expect(right_to_left_primes(number.to_s)).to eq(true)
    end

    it 'returns false' do
      number = 333
      expect(right_to_left_primes(number.to_s)).to eq(false)
    end
  end
end
