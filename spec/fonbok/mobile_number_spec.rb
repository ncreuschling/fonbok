require 'spec_helper'
require 'fonbok/mobile_number'

RSpec.describe Fonbok::MobileNumber do
  it 'formats nicely to a string' do
    number = described_class.new '0123456789'
    expect(number.to_s).to eq 'mobile: 0123456789'
  end
end
