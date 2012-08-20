# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'guard/jekyll'

Gem::Specification.new do |s|
  s.name        = "guard-jekyll"
  s.version     = Guard::Jekyll::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Haslem"]
  s.email       = ["therabidbanana@gmail.com"]
  s.homepage    = "http://davidhaslem.com"
  s.summary     = %q{guard file for jekyll}
  s.description = %q{guard file for jekyll}

  s.rubyforge_project = "guard-jekyll"

  s.add_dependency 'guard', '>= 1.1.0'
  s.add_dependency "jekyll"

  s.files        = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end
