# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubygems/localproxy/version'

Gem::Specification.new do |spec|
  spec.name          = "rubygems-localproxy"
  spec.version       = Rubygems::Localproxy::VERSION
  spec.authors       = ["Artur Roszczyk"]
  spec.email         = ["artur.roszczyk@gmail.com"]
  spec.description   = %q{Keep local cache of rubygems to speed up resolving dependencies}
  spec.summary       = %q{Uses squid}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
