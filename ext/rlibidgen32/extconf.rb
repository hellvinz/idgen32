require 'mkmf'

swig = [ 'swig2', 'swig2.0', 'swig' ].select { |swig_name| find_executable(swig_name) }.first

if swig
  $stdout.write "Using '#{swig}' to generate wrapper code... "
  `#{swig} -ruby #{File.dirname(File.realpath(__FILE__))}/rlibidgen32.i`
  $stdout.write "done\n"
else
  $stderr.write "You need SWIG to compile this extension.\n"
  exit 1
end

if /linux$/ =~ RUBY_PLATFORM
  if !find_header('bsd/stdlib.h') or !find_library('bsd', 'arc4random')
    $stderr.write 'function arc4random is needed please install libbsd-dev'
    exit 1
  end
end

have_func('arc4random_buf')

create_makefile 'rlibidgen32'
