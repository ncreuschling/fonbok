require_relative 'formatters/simple_number_formatter'

module Fonbok
  class Number
    attr_reader :number

    def initialize(number, formatter: Formatters::SimpleNumberFormatter.new(prefix: 'phone'))
      @number = String(number)
      @formatter = formatter
    end

    def to_s
      @formatter.format(self)
    end
  end
end
