module Fonbok
  module Formatters
    class SimplePhonebookFormatter
      def format(phonebook)
        phonebook.contacts.inject("#{phonebook.name}\n") do |contact_result, contact|
          contact_result << "  #{contact.name}\n"
          contact.numbers.inject(contact_result) do |number_result, number|
            number_result << "    #{number}\n"
          end
        end
      end
    end
  end
end
