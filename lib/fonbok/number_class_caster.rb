require_relative 'number'
require_relative 'fax_work_number'
require_relative 'home_number'
require_relative 'mobile_number'
require_relative 'work_number'

module Fonbok
  class NumberClassCaster
    NUMBER_CLASS_MAP = Hash.new(Number).update(
      'fax_work' => FaxWorkNumber,
      'home'     => HomeNumber,
      'mobile'   => MobileNumber,
      'work'     => WorkNumber
    ).freeze

    def self.cast(type, number)
      NUMBER_CLASS_MAP[type].new number
    end
  end
end
