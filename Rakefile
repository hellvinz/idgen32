# Rakefile
require 'rake/clean'
require 'rake/testtask'
require 'rdoc/task'

CLEAN.include('ext/**/*{.o,.log,.so,.bundle}')  
CLEAN.include('ext/**/Makefile')  
CLOBBER.include('lib/*{.so,.bundle}')

require 'rake/extensiontask'

Rake::ExtensionTask.new('rlibidgen32')

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

task :bench do
  ruby "test/bench.rb"
end

RDoc::Task.new do |rdoc|
  rdoc.main = "README.md"
  rdoc.rdoc_files.include("README.md", "lib/*.rb")
end

task :default => [:test]
