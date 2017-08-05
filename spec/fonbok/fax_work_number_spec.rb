require 'spec_helper'
require 'fonbok/fax_work_number'

RSpec.describe Fonbok::FaxWorkNumber do
  it 'formats nicely to a string' do
    number = described_class.new '0123456789'
    expect(number.to_s).to eq 'fax: 0123456789'
  end
end
