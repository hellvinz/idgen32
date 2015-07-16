# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('../lib/idgen32/version', __FILE__)

Gem::Specification.new do |s|
  s.name = %q{idgen32}
  s.version = Idgen32::VERSION
  s.required_rubygems_version = ">= 2.0"
  s.authors = ["Vincent Hellot"]
  s.email = %q{hellvinz@gmail.com}
  s.date = %q{2008-11-23}
  s.summary = %q{Non-repeating ID generation}
  s.description = %q{non-repeating ID generation covering an almost maximal 32-bit range.}
  s.extensions = ["ext/rlibidgen32/extconf.rb"]
  s.extra_rdoc_files = ["README.md"]
  s.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  s.executables   = s.files.grep(/^bin\//).map { |f| File.basename(f) }
  s.has_rdoc = true
  s.homepage = %q{http://github.com/hellvinz/idgen32}
  s.rdoc_options = ["--line-numbers", "--inline-source","--exclude", "ext/*", "--title", "Idgen32", "--main", "README.md"]
  s.require_paths = ["lib", "ext"]
  s.test_files = ["test/test_helper.rb", "test/idgen32_test.rb", "test/binding_test.rb", "test/bench.rb"]

  s.add_development_dependency 'rake-compiler', '~>0.9.5'
  s.add_development_dependency 'rake', '>= 0.8.7'
  s.add_development_dependency 'minitest', '~> 5.0', '>= 5.0.0'
end
