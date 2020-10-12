# coding: utf-8
$:.unshift(File.join(File.dirname(__FILE__), 'lib'))

require "reggora/version"

Gem::Specification.new do |spec|
  spec.name          = "reggora-ruby"
  spec.version       = Reggora::Version::VERSION
  spec.authors       = ["James Dullaghan"]
  spec.email         = ["support@realvestor.io"]
  spec.description   = %q{Reggora API Ruby wrapper}
  spec.summary       = %q{Ruby wrapper for Reggora.io API with ActiveRecord-style syntax}
  spec.homepage      = "https://github.com/Realvestor/reggora-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rest-client", ">= 2.0.1", "< 3.0"

  spec.add_development_dependency "rake", "~> 10.4.2"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "webmock", "~> 1.2"
  spec.add_development_dependency "coveralls", "~> 0.8.13"
  spec.add_development_dependency "simplecov", "~> 0.11.0"
end
