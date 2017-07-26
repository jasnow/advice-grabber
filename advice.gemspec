# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'advice/version'

Gem::Specification.new do |spec|
  spec.name          = "advice"
  spec.version       = Advice::VERSION
  spec.authors       = ["George McIntosh"]
  spec.email         = ["george@georgemcintosh.com"]
  spec.description   = %q{A simple CLI advice client}
  spec.summary       = %q{Fetches random advice from a remote web service}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "cucumber", '3.0.0.pre.2' # LOCKED DOWN
  spec.add_development_dependency "aruba"
  spec.add_dependency "thor"
end
