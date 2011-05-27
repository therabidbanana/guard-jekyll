# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'guard/jekyll/version'

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
  
  s.add_dependency 'guard', '>= 0.2.2'
  s.add_dependency "jekyll"
  
  s.files        = Dir.glob('{lib}/**/*') #+ %w[LICENSE README.rdoc]
  s.require_path = 'lib'
end
