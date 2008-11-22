# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('idgen32', '0.1.0') do |p|
  p.description    = "Non-repeating ID generation"
  p.url            = "http://github.com/hellvinz/idgen32"
  p.author         = "Vincent Hellot"
  p.email          = "hellvinz@gmail.com"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
