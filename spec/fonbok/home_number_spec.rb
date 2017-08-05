require 'spec_helper'
require 'fonbok/home_number'

RSpec.describe Fonbok::HomeNumber do
  it 'formats nicely to a string' do
    number = described_class.new '0123456789'
    expect(number.to_s).to eq 'home: 0123456789'
  end
end
