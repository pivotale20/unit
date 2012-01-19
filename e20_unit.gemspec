# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "unit/version"

Gem::Specification.new do |s|
  s.name        = "e20_unit"
  s.version     = Unit::VERSION
  s.authors     = ["Daniel Mendler"]
  s.email       = ["mail@daniel-mendler.de"]
  s.summary     = 'Scientific unit support for ruby for calculations'
  s.homepage    = %q{http://github.com/efficiency20/unit}

  s.rubyforge_project = s.name

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency('rake', ['>= 0.8.7'])
  s.add_development_dependency('rspec')
end
