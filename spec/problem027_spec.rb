require 'rspec'
require_relative '../problem027'

RSpec.describe "Quadratic primes" do
  it 'returns 40 for a=1, b=41' do
    expect(ConsecutivePrimes.new(1, 41).length).to eq(40)
  end

  it 'returns 80 for a=-79, b=1601' do
    expect(ConsecutivePrimes.new(-79, 1601).length).to eq(80)
  end
end
