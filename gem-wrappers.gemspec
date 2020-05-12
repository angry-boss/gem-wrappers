#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-

require File.expand_path("../lib/nlmt-wrappers/version.rb", __FILE__)

Gem::Specification.new do |s|
  s.name = "nlmt-wrappers"
  s.version = NlmtWrappers::VERSION
  s.authors = ["Shaikhraznova"]
  s.email = ["ilmirashaikhraznova@gmail.com"]
  s.homepage = "https://rubygems.org/gems/nlmt-wrappers"
  s.metadata    = { "source_code_uri" => "https://github.com/angry-boss/nlmt-wrappers" }
  s.summary = "Create gem wrappers for easy use of gems in cron and other system locations."
  s.license = "Apache 2.0"
  s.extensions  = %w( ext/wrapper_generator/extconf.rb )
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.add_development_dependency("rake", "<11")
  s.add_development_dependency("minitest", "<6")
  # s.add_development_dependency("smf-gem")
end
