require 'spec_helper'
require 'fonbok/contact'
require 'fonbok/number'
require 'fonbok/work_number'

RSpec.describe Fonbok::Contact do
  let(:contact) { described_class.new name: 'some name' }
  let(:number) { Fonbok::Number.new '0123456789' }
  let(:another_number) { Fonbok::WorkNumber.new '0987654321' }
  let(:contact_with_numbers) do
    contact.add_number number
    contact.add_number another_number
  end

  it 'accepts a name' do
    expect(contact.name).to eq 'some name'
  end

  it 'requires a name' do
    expect { described_class.new }.to raise_exception(ArgumentError)
  end

  it 'has numbers' do
    expect(contact_with_numbers.numbers).to contain_exactly(number, another_number)
  end
end
