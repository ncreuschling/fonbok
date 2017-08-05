require 'spec_helper'
require 'fonbok/number'

RSpec.describe Fonbok::Number do
  it 'formats nicely to a string' do
    number = described_class.new '0123456789'
    expect(number.to_s).to eq 'phone: 0123456789'
  end
end
