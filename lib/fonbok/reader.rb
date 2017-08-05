require 'nokogiri'
require_relative 'number_class_caster'
require_relative 'phonebook'

module Fonbok
  class Reader
    def initialize(path)
      @path = path
      @doc = Nokogiri::XML(File.open(@path, 'r'))
    end

    def import
      phonebook_from_xml.tap do |phonebook|
        @doc.xpath('/phonebooks/phonebook/contact').each do |xml_contact|
          contact = contact_from_xml(xml_contact)
          xml_contact.xpath('telephony/number').each do |xml_number|
            number = number_from_xml(xml_number)
            contact.add_number(number)
          end
          phonebook.add_contact(contact)
        end
      end
    end

    def inspect
      "<Fonbok::Reader path: #{@path}>"
    end

    private

    def phonebook_from_xml
      phonebook_name = @doc.at_xpath('/phonebooks/phonebook/@name').value
      Phonebook.new(name: phonebook_name)
    end

    def contact_from_xml(xml_contact)
      contact_name = xml_contact.xpath('person/realName').text
      Contact.new(name: contact_name)
    end

    def number_from_xml(xml_number)
      NumberClassCaster.cast xml_number['type'], xml_number.text
    end
  end
end
