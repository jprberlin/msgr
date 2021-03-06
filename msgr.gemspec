# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'msgr/version'

Gem::Specification.new do |spec|
  spec.name          = 'msgr'
  spec.version       = Msgr::VERSION
  spec.authors       = ['Jan Graichen']
  spec.email         = ['jg@altimos.de']
  spec.description   = %q{Msgr: Rails-like Messaging Framework}
  spec.summary       = %q{Msgr: Rails-like Messaging Framework}
  spec.homepage      = 'https://github.com/jgraichen/msgr'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport'
  spec.add_dependency 'bunny', '~> 0.10.0'
  spec.add_dependency 'celluloid'

  spec.add_development_dependency 'bundler', '~> 1.3'
end
