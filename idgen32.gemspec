# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{idgen32}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Vincent Hellot"]
  s.date = %q{2008-11-23}
  s.description = %q{Non-repeating ID generation}
  s.email = %q{hellvinz@gmail.com}
  s.extensions = ["ext/extconf.rb"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["ext/extconf.rb", "ext/idgen.c", "ext/idgen.h", "ext/rlibidgen32.i", "ext/rlibidgen32_wrap.c", "idgen32.gemspec", "init.rb", "lib/idgen32.rb", "Manifest", "Rakefile", "README.rdoc", "test/bench.rb", "test/test_helper.rb", "test/unit/binding.rb", "test/unit/test_idgen32.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/hellvinz/idgen32}
  s.rdoc_options = ["--line-numbers", "--inline-source","--exclude", "ext/*", "--title", "Idgen32", "--main", "README.rdoc"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{idgen32}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Non-repeating ID generation}
  s.test_files = ["test/test_helper.rb", "test/unit/test_idgen32.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
