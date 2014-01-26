# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'justy/version'

Gem::Specification.new do |spec|
  spec.version     = '1.0.0'
  spec.date        = '2013-01-26'
  spec.name          = "justy"
  spec.version       = Justy::VERSION
  spec.authors       = ["Kirill Kunst"]
  spec.email         = ["kirillkunst@gmail.com"]
  spec.description   = %q{When you want to find duplicate files in folder, all you need is Justy}
  spec.summary       = %q{Justy - duplicate files finder}
  spec.homepage      = "http://github.com/leoru/justy"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*.rb"]
  spec.executables   = ["justy"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  
end
