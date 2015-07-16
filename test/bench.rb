#!/usr/bin/env ruby -wU

HERE = File.dirname(__FILE__)
$LOAD_PATH << "#{HERE}/../lib/"
require 'idgen32'

require 'benchmark'
require 'rubygems'


class Bench
  def run
      benchmark
  end
  
  private
  def benchmark    
    Benchmark.bm(30) do |x|
        @m = Idgen32.instance
        n = 1000000
        x.report("idgen32:#{n}:generate") do
          n.times {@m.generate}
        end
    end
  end
end

Bench.new.run
