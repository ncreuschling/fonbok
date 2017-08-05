require_relative 'number'
require_relative 'formatters/simple_number_formatter'

module Fonbok
  class HomeNumber < Number
    def initialize(number, formatter: Formatters::SimpleNumberFormatter.new(prefix: 'home'))
      super
    end
  end
end
