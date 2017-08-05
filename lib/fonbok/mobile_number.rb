require_relative 'number'
require_relative 'formatters/simple_number_formatter'

module Fonbok
  class MobileNumber < Number
    def initialize(number, formatter: Formatters::SimpleNumberFormatter.new(prefix: 'mobile'))
      super
    end
  end
end
