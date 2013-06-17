# -*- encoding: utf-8 -*-
require File.expand_path('../lib/haiku_name/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Brendon Murphy"]
  gem.email         = ["xternal1+github@gmail.com"]
  gem.summary       = %q{Generate pleasing random name strings}
  gem.description   = gem.summary
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "haiku_name"
  gem.require_paths = ["lib"]
  gem.version       = HaikuName::VERSION

  gem.add_development_dependency "minitest"
end
