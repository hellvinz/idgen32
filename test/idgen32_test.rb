require 'test_helper'

class Idgen32Test < MiniTest::Spec
  describe '#generate' do
    it 'should generate an integer on #generate' do
      Idgen32.instance.generate.must_be_kind_of(Integer)
    end
  end
end
