# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fonbok/version'

Gem::Specification.new do |spec| # rubocop:disable Metrics/BlockLength
  spec.name          = 'fonbok'
  spec.version       = Fonbok::VERSION
  spec.authors       = ['Nicolai Reuschling']
  spec.email         = ['nicolai@reuschling.name']

  spec.summary       = 'fonbok reads and writes phonebooks for AVM FRITZ!Box devices.'
  spec.description   = 'fonbok reads and writes phonebooks (XML files) for AVM FRITZ!Box devices.'
  spec.homepage      = 'https://github.com/ncreuschling/fonbok'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # gem signing
  spec.cert_chain  = ['certs/fonbok-public_cert.pem']
  spec.signing_key = File.expand_path('~/.ssh/fonbok-private_key.pem') if $PROGRAM_NAME.match?(/gem\z/)

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'terminal-notifier'
  spec.add_development_dependency 'terminal-notifier-guard'
  spec.add_development_dependency 'simplecov'

  spec.add_dependency 'nokogiri'
end
