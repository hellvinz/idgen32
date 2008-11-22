require "#{File.dirname(__FILE__)}/../test_helper"

class Idgen32Test < Test::Unit::TestCase
  def test_generate
     assert_kind_of Integer, Idgen32.instance.generate
  end
end