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

  context 'when given numbers separated by new lines' do
    it 'returns the sum of the numbers' do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
  end

  context 'when given a different delimiter' do
    it 'returns the sum of the numbers' do
      expect(StringCalculator.add("//;\n1;2")).to eq(3)
    end
  end

  context 'when given negative numbers' do
    it 'throws an exception' do
      expect { StringCalculator.add('1,-2,3') }.to raise_error('negative not allowed')
    end
  end
end