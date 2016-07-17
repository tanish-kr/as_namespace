# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'as_namespace/version'

Gem::Specification.new do |spec|
  spec.name          = "as_namespace"
  spec.version       = AsNamespace::VERSION
  spec.authors       = ["tatsunori nishikori"]
  spec.email         = ["tora.1986.tatsu@gmail.com"]

  spec.summary       = %q{Omit the ruby namespace}
  spec.description   = %q{Omit the ruby name space by defining in the class}
  spec.homepage      = "https://github.com/kitaro-tn/as_namespace"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-rubocop"
  spec.add_development_dependency "guard-yard"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
end
