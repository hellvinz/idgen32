require 'mkmf'

if ENV['SWIG']
  puts "running SWIG"
  $stdout.write `swig -ruby -O -autorename rlibidgen32.i`
end

if `uname -sp` == "Darwin i386\n"
  $CFLAGS.gsub! /-arch \S+/, ''
  $CFLAGS << " -arch i386"
  $LDFLAGS.gsub! /-arch \S+/, ''
  $LDFLAGS << " -arch i386"
end

$CFLAGS.gsub! /-O\d/, ''

if ENV['DEBUG']
  puts "setting debug flags"
  $CFLAGS << " -O0 -ggdb -DHAVE_DEBUG"
else
  $CFLAGS << " -O3"
end

create_makefile 'rlibidgen32'
