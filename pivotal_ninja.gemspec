# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pivotal_ninja/version'

Gem::Specification.new do |spec|
  spec.name          = "pivotal_ninja"
  spec.version       = PivotalNinja::VERSION
  spec.authors       = ["John Norman Capule"]
  spec.email         = ["johnnormancapule@gmail.com"]
  spec.description   = %q{Gem to interface with the pivotal tracker v5 api}
  spec.summary       = %q{pivotal tracker v5 api interface}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "json"
  spec.add_runtime_dependency "representable"
end
