# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'balboa/client/version'

Gem::Specification.new do |spec|
  spec.name          = "balboa-client"
  spec.version       = Balboa::Client::VERSION
  spec.authors       = ["Michael Hotan"]
  spec.email         = ["michael.hotan@socrata.com"]

  spec.summary       = %q{Ruby Client for Balboa.}
  spec.description   = %q{Enables the ability to send metrics to existing Balboa consumers.}
  spec.homepage      = "https://github.com/socrata-platform/balboa-ruby-client"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", ">= 12.3.3"
end
