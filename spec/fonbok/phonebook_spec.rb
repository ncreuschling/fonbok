# rubocop:disable Layout/IndentHeredoc
require 'spec_helper'
require 'fonbok/phonebook'

RSpec.describe Fonbok::Phonebook do
  let(:number) { Fonbok::Number.new '0123456789' }
  let(:contact_with_number) { Fonbok::Contact.new name: 'random person', numbers: number }
  let(:phonebook) do
    phonebook = described_class.new name: 'my phonebook'
    phonebook.add_contact(contact_with_number)
  end

  it 'has a name' do
    expect(phonebook.name).to eq 'my phonebook'
  end

  it 'stores a contact' do
    expect(phonebook.contacts).to contain_exactly(contact_with_number)
  end

  it 'formats nicely to a string' do
    expect(phonebook.to_s).to eq <<~EXPECTED_OUTPUT
                                      my phonebook
                                        random person
                                          phone: 0123456789
                                    EXPECTED_OUTPUT
  end

  it 'is inspectable and displays the name of the phonebook' do
    expect(phonebook.inspect).to match(/Fonbok::Phonebook name: my phonebook/)
  end
end
