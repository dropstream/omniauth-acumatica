# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-acumatica/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Acumatica"]
  gem.email         = [""]
  gem.description   = %q{Acumatica OAuth2 strategy for OmniAuth}
  gem.summary       = %q{Acumatica OAuth2 strategy for OmniAuth}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "omniauth-acumatica"
  gem.require_paths = ["lib"]
  gem.version       = Omniauth::Acumatica::VERSION

  gem.add_runtime_dependency 'omniauth-oauth2', '~> 1.1'
  gem.add_development_dependency "bundler"
  gem.add_development_dependency "rake"
end
