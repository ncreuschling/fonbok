require 'spec_helper'
require 'fonbok/reader'

RSpec.describe Fonbok::Reader do
  let(:reader_with_fixture_file) { described_class.new(fixture_file) }

  it 'accepts a path to an XML file' do
    expect(reader_with_fixture_file).to be_instance_of described_class
  end

  it 'requires a path to an XML file' do
    expect { described_class.new }.to raise_exception(ArgumentError)
  end

  it 'imports a file into a phonebook object' do
    phonebook = reader_with_fixture_file.import
    expect(phonebook).to be_instance_of Fonbok::Phonebook
  end

  it 'imports four contacts into a phonebook object' do
    phonebook = reader_with_fixture_file.import
    expect(phonebook.contacts.size).to eq 4
  end

  it 'is inspectable and displays the path to the import file' do
    expect(reader_with_fixture_file.inspect).to match(
      %r{Fonbok::Reader path:.*/fonbok/spec/fixtures/FRITZ.Box_Telefonbuch_Testdaten_29.07.17_2018.xml}
    )
  end
end
