# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gates_of_heaven/version'

Gem::Specification.new do |spec|
  spec.name          = "gates_of_heaven"
  spec.version       = GatesOfHeaven::VERSION
  spec.authors       = ["bomatson"]
  spec.email         = ["bobby@carbonfive.com"]
  spec.description   = %q{This gem will tell you whether your password is garbage or not}
  spec.summary       = %q{Check password strength server-side}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "cucumber"
  spec.add_development_dependency "aruba"
  spec.add_development_dependency "thor"
end
