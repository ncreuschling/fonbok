require_relative 'number'

module Fonbok
  class Contact
    attr_reader :name, :numbers

    def initialize(name:, numbers: [])
      @name = String(name)
      @numbers = Array(numbers)
    end

    def add_number(number)
      @numbers << number
      self
    end
  end
end
