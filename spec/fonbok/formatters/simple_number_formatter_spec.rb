require 'spec_helper'

RSpec.describe Fonbok::Formatters::SimpleNumberFormatter do
  let(:number) { Fonbok::Number.new '1234567890' }

  it 'formats numbers with a prefix' do
    formatter = described_class.new prefix: 'work'
    expect(formatter.format(number)).to eq 'work: 1234567890'
  end

  it 'formats numbers without a prefix' do
    formatter = described_class.new
    expect(formatter.format(number)).to eq '1234567890'
  end
end
