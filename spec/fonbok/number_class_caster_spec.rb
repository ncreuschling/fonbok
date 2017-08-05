require 'spec_helper'
require 'fonbok/number_class_caster'

RSpec.describe Fonbok::NumberClassCaster do
  {
    'fax_work' => Fonbok::FaxWorkNumber,
    'home'     => Fonbok::HomeNumber,
    'mobile'   => Fonbok::MobileNumber,
    'work'     => Fonbok::WorkNumber,
    'default'  => Fonbok::Number
  }.each do |input, expected_output_class|
    it "casts input '#{input}' to an instance of class #{expected_output_class}" do
      number = described_class.cast input, '0123456789'
      expect(number).to be_instance_of(expected_output_class)
    end
  end
end
