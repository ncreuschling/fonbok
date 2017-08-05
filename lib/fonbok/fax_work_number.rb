require_relative 'number'
require_relative 'formatters/simple_number_formatter'

module Fonbok
  class FaxWorkNumber < Number
    def initialize(number, formatter: Formatters::SimpleNumberFormatter.new(prefix: 'fax'))
      super
    end
  end
end
