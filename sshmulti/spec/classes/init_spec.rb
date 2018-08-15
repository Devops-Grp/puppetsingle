require 'spec_helper'
describe 'sshmulti' do
  context 'with default values for all parameters' do
    it { should contain_class('sshmulti') }
  end
end
