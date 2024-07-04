require 'rspec'
require_relative '../string_calculator'

RSpec.describe StringCalculator, "#add" do
  it "returns 0 for empty string" do
    expect(described_class.add("")).to eql(0)
  end
end