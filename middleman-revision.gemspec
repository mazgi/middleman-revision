# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "middleman-revision"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Hidenori MATSUKI"]
  s.email       = ["Matsuki.Hidenori@gmail.com"]
  s.homepage    = "http://mazgi.com"
  s.summary     = %q{VCS Revision reader for Middleman}
  s.description = %q{VCS Revision reader for Middleman}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  # The version of middleman-core your extension depends on
  s.add_runtime_dependency("middleman-core", [">= 3.3.7"])
  
  # Additional dependencies
  s.add_runtime_dependency("git", [">= 1.2.9"])
end
