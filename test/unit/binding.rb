require "#{File.dirname(__FILE__)}/../test_helper"

class BindingTest < Test::Unit::TestCase
  def test_libidgen32_loaded
    assert_nothing_raised { Rlibidgen32 }
  end
end
