$LOAD_PATH << "#{File.dirname(__FILE__)}/../lib"
$LOAD_PATH << "#{File.dirname(__FILE__)}/../ext"

if ENV['DEBUG']
  require 'rubygems'
  require 'ruby-debug' 
end
  
require 'test/unit'
require 'idgen32'
