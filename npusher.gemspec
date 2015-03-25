# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'npusher/version'

Gem::Specification.new do |spec|
  spec.name          = "npusher"
  spec.version       = Npusher::VERSION
  spec.authors       = ["rudnev"]
  spec.email         = ["ryrudnev@gmail.com"]

  spec.summary       = %q{Gem for NPusher.}
  spec.description   = %q{API for NPusher.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
