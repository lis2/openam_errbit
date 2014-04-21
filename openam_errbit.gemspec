# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'openam_errbit/version'

Gem::Specification.new do |spec|
  spec.name          = "openam_errbit"
  spec.version       = OpenamErrbit::VERSION
  spec.authors       = ["Krzysztof Kotlarek"]
  spec.email         = ["kotlarek.krzysztof@gmail.com"]
  spec.description   = %q{OpenAM authentication for Errbit}
  spec.summary       = %q{OpenAM authentication for Errbit}
  spec.homepage      = "https://github.com/jnsolutions/openam_errbit"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "openam_auth"
  spec.add_runtime_dependency "railties", "~> 3.2"
end
