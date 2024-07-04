require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator, "#add" do
  context 'when given an empty string' do
    it "returns 0 for empty string" do
      expect(described_class.add("")).to eql(0)
    end
  end

  context 'when given a single number' do
    it 'returns the number' do
      expect(StringCalculator.add('1')).to eq(1)
    end
  end

  context 'when given two numbers' do
    it 'returns the sum of the numbers' do
      expect(StringCalculator.add('1,5')).to eq(6)
    end
  end
end