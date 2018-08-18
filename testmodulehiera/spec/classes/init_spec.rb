require 'spec_helper'
describe 'testmodulehiera' do
  context 'with default values for all parameters' do
    it { should contain_class('testmodulehiera') }
  end
end
