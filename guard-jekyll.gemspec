# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'guard/jekyll/version'

Gem::Specification.new do |s|
  s.name        = "guard-jekyll"
  s.version     = Guard::JekyllVersion::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["David Haslem"]
  s.email       = ["therabidbanana@gmail.com"]
  s.homepage    = "http://davidhaslem.com"
  s.summary     = "Guard gem for Jekyll."
  s.description = "Guard::Jekyll automatically rebuilds websites with the Jekyll static site generator."


  s.add_dependency 'guard', '>= 1.1.0'
  s.add_dependency "jekyll"

  s.files        = `git ls-files`.split("\n")
  s.require_paths = ['lib']
end
