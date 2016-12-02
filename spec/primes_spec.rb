require 'rspec'
require 'gen_primes'

describe "#gen_primes" do
  it "returns first five primes in order" do
    expect(gen_primes(5)).to eq([2, 3, 5, 7, 11])
  end

end
