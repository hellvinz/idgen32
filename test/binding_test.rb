require 'test_helper'

class BindingTest < MiniTest::Spec
  describe 'binary module' do
    it 'should not raise when loading Rlibidgen32' do
      Rlibidgen32
    end
  end
end
