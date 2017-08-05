require 'spec_helper'
require 'fonbok/phonebook'

RSpec.describe Fonbok::Formatters::SimplePhonebookFormatter do
  let(:number) { Fonbok::Number.new '0123456789' }
  let(:contact) { Fonbok::Contact.new name: 'random person', numbers: number }
  let(:phonebook) { Fonbok::Phonebook.new name: 'my phonebook' }

  it 'formats nicely to a string' do
    phonebook.add_contact contact

    formatter = described_class.new
    expect(formatter.format(phonebook)).to eq "my phonebook\n  random person\n    phone: 0123456789\n"
  end
end
