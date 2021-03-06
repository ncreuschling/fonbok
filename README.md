# Fonbok

[![Build Status](https://travis-ci.org/ncreuschling/fonbok.svg?branch=master)](https://travis-ci.org/ncreuschling/fonbok) [![Gem Version](https://badge.fury.io/rb/fonbok.svg)](https://badge.fury.io/rb/fonbok)

## Abstract

fonbok reads (and soon-ish writes) phonebook files for AVM FRITZ!Box devices.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fonbok'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fonbok

## Usage

### Import of phonebook XML file

```ruby
require 'fonbok'

reader = Fonbok::Reader.new(path_to_your_phonebook_xml_file)
phonebook = reader.import
puts phonebook

puts phonebook.name
phonebook.contacts.each do |contact|
  puts contact.name
  contact.numbers.each do |number|
    puts number
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ncreuschling/fonbok.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
