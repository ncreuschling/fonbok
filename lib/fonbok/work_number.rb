require_relative 'number'
require_relative 'formatters/simple_number_formatter'

module Fonbok
  class WorkNumber < Number
    def initialize(number, formatter: Formatters::SimpleNumberFormatter.new(prefix: 'work'))
      super
    end
  end
end
