module Fonbok
  module Formatters
    class SimpleNumberFormatter
      def initialize(prefix: nil)
        @prefix = prefix
      end

      def format(number)
        return number.number unless @prefix
        "#{@prefix}: #{number.number}"
      end
    end
  end
end
