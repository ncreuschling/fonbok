require 'spec_helper'
require 'fonbok/work_number'

RSpec.describe Fonbok::WorkNumber do
  it 'formats nicely to a string' do
    number = described_class.new '0123456789'
    expect(number.to_s).to eq 'work: 0123456789'
  end
end
