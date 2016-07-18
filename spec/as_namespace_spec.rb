require 'spec_helper'
require 'support/sample_namespace'

describe AsNamespace do
  it 'has a version number' do
    expect(AsNamespace::VERSION).not_to be nil
  end

  it 'is abbreviated name' do
    test_class = TestClass
    expect(test_class.instance_methods(false)).not_to include(:grand)
    expect(test_class.const_defined?(:CHILD)).to be true
    expect(test_class.new.grandson).to eq("Grandson")
    expect(test_class.new.child).to eq("Child")
  end
end
