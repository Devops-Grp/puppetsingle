require 'spec_helper'
describe 'testmodule' do
  context 'with default values for all parameters' do
    it { should contain_class('testmodule') }
  end
end
