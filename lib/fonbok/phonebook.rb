require_relative 'contact'
require_relative 'formatters/simple_phonebook_formatter'

module Fonbok
  class Phonebook
    attr_reader :name, :contacts

    def initialize(name:, contacts: [], formatter: Formatters::SimplePhonebookFormatter.new)
      @name = String(name)
      @contacts = Array(contacts)
      @formatter = formatter
    end

    def add_contact(contact)
      @contacts << contact
      self
    end

    def to_s
      @formatter.format(self)
    end

    def inspect
      "<Fonbok::Phonebook name: #{name}>"
    end
  end
end
